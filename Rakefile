require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'



Cucumber::Rake::Task.new(:us_ios_regression_suite, "Run all tests for US iOS") do |t|
  t.profile = 'default'
end

task :default => :features