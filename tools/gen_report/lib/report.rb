require 'yaml'
require 'date'
require 'fileutils'

# レポート生成クラス
class Report
  attr_reader :output_dir, :input_files, :isclear, :map_month

  def initialize(output_dir, input_files, isclear)
    @output_dir = output_dir
    @input_files = input_files
    @isclear = isclear
    @map_month = {}
  end

  private

  def generate_separete_str(str)
    "\n\n=== #{str} ===\n\n"
  end

  def safe_write(body, dpath, fname)
    FileUtils.mkdir_p(dpath) unless Dir.exist?(dpath)
    path = "#{dpath}/#{fname}"
    File.write(path, body)
  end

  def generate_header(title, count)
    d = Date.today.strftime('%Y-%m-%d')
    <<EOF
---
title: "#{title}"
description:
date: "#{d}"
count: #{count}
tags:
    - "report"
---
EOF
  end

  def add_header(body, header)
    "#{header}\n\n#{body}"
  end

  # TODO カウントがまだ表示されている
  # 月ごとにHashTableで配列にして返却
  def parse_by_month_from
    return @map_month unless @map_month.keys.length.zero?

    # parse files
    @input_files.each do |path|
      begin
        # read file
        contents = File.readlines(path)
        ## subst header -> header_text
        header_text_lines = contents.drop(1).take_while { |x| !x.chomp.include?('---') }
        ### parse header_text -> header(array)
        header = YAML.safe_load(header_text_lines.join, permitted_classes: [Date])
        ## read others -> body
        body = contents.drop(1).drop_while { |x| !x.chomp.include?('---') }.drop(1).join
        ## grouping file(mapping Ymd) -> calendar_map
        ## fix -> map_month, map_week
        ## generate key
        key = header['date'].strftime('%Y-%m')
        ## month
        map_month[key] = [] unless map_month[key]
        map_month[key] << { body: body, header: header, contents: File.read(path) }
      rescue
        puts "skipped #{path}"
      end
    end
    map_month
  end

  def clear(dir)
    FileUtils.rm_rf("#{@output_dir}/#{dir}")
    @map_month = {}
  end

  public

  # 月報生成
  def generate_month_report
    clear('month') if @isclear
    map_month = parse_by_month_from

    map_month.each_key do |k|
      title = "月報[#{k}]"
      cnt = 0
      body = map_month[k].map do |report|
        cnt += report[:contents].size
        generate_separete_str(report[:header]['title']) + report[:contents]
      end.join
      dpath = "#{@output_dir}/monthly"
      safe_write(add_header(body, generate_header(title, cnt)), dpath, "#{k}.md")
    end
  end

  # 週報生成
  def generate_week_report
    clear('week') if @isclear
    map_month = parse_by_month_from
    # 月ごとにループまわす。
    # 日付ごとに1~5週くらいに分割(weeks)
    weeks = (1..31).to_a.each_slice(7).to_a
    map_month.each_key do |k|
      # 月内でのソート
      repos = map_month[k].sort { |a, b| a[:header]['date'] <=> b[:header]['date'] }
      weeks.each_with_index do |days, i|
        week_reports = []
        repos.each do |repo|
          week_reports << repo if days.include?(repo[:header]['date'].day)
        end
        title = "週報[#{k}-week-#{i + 1}]"
        cnt = 0
        body = week_reports.map do |report|
          cnt += report[:contents].size
          generate_separete_str(report[:header]['title']) + report[:contents]
        end.join
        dpath = "#{@output_dir}/weekly/#{k}"
        safe_write(add_header(body, generate_header(title, cnt)), dpath, "#{i + 1}.md")
      end
    end
  end
end
