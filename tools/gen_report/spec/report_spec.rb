require 'fileutils'

require_relative "../lib/report.rb"

RSpec.describe Report do
  it "週報生成" do
    output_dir = './output_test/'
    FileUtils.rm_rf(output_dir)
    repo = Report.new(output_dir, Dir.glob('./testmd/**/*.md'), false)
    repo.generate_week_report
    expect(Dir.exist?(output_dir)).to be(true)
    FileUtils.rm_rf(output_dir)
  end
end
