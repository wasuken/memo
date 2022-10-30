require './lib/report.rb'

rp = Report.new('./output', Dir.glob('../../diary/**/*.md'), false)
rp.generate_month_report
rp.generate_week_report
