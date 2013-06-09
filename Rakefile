# -*- coding: UTF-8 -*-
require "bundler/gem_tasks"

require 'rake/testtask'

Rake::TestTask.new( 'test:lib:use_cases_api' ) do |t|
  t.libs << ['app', 'lib', 'test_helpers']
  t.test_files = FileList['test/lib/use_cases_api/**/*_test.rb']
  t.verbose = false
end

Rake::TestTask.new( 'test:lib:entities_api' ) do |t|
  t.libs << ['app', 'lib', 'test_helpers']
  t.test_files = FileList['test/lib/entities_api/**/*_test.rb']
  t.verbose = false
end

Rake::TestTask.new( 'test:lib:ruby_persistence_api' ) do |t|
  t.libs << ['app', 'lib', 'test_helpers']
  t.test_files = FileList['test/lib/ruby_persistence_api/**/*_test.rb']
  t.verbose = false
end

desc 'Run tests for test:lib:entities_api + test:lib:use_cases_api + test:lib:ruby_persistence_api'
task 'test:lib' => ['test:lib:entities_api', 'test:lib:use_cases_api', 'test:lib:ruby_persistence_api']

task default: :test

FileList['**/*.rake'].each do |task_file|
  load( File.expand_path( task_file ) )
end
