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

  def clear
    FileUtils.rm_fr(@output_dir)
  end

  public

  # 月報生成
  def generate_month_report
    clear if @isclear
    map_month = parse_by_month_from

    map_month.each_key do |k|
      body = map_month[k].map do |report|
        generate_separete_str(report[:header]['title']) + report[:contents]
      end.join
      dpath = "#{@output_dir}/monthly"
      safe_write(body, dpath, "#{k}.md")
    end
  end

  # 週報生成
  def generate_week_report
    clear if @isclear
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
        body = week_reports.map do |report|
          generate_separete_str(report[:header]['title']) + report[:contents]
        end.join
        dpath = "#{@output_dir}/weekly/#{k}"
        safe_write(body, dpath, "#{i}.md")
      end
    end
  end
end
