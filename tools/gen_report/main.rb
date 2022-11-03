require './lib/report.rb'

files = Dir.glob('../../diary/**/*.md') + Dir.glob('../../drepo/**/*.md')

rp = Report.new('./output', files, true)

rp.generate_month_report
rp.generate_week_report
