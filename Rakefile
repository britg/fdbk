require 'rubygems'
require 'rake/testtask'

task :default => [:start]

task :start do
  system "thin --debug -R config.ru start"
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test_all.rb']
  t.verbose = true
end

