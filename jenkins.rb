#! /usr/bin/env ruby

require 'parallel_tests'
require 'report_builder'



results = `parallel_cucumber features/`

puts results

at_exit do

  puts 'Yo! we are done!'
  ReportBuilder.configure do |config|
    config.input_path = 'results/'
    config.report_path = 'a_test_report'
    config.report_title = 'My Test Check report'
    config.report_types = [:retry, :html, :json]
  end
  ReportBuilder.build_report
end


