begin
    require 'bundler/setup'
rescue LoadError
    puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rake/testtask'
desc 'Test the widgets plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Default: run unit tests.'
task :default => :test

begin
  require 'rdoc/task'
  desc 'Generate documentation for the widgets plugin.'
  Rake::RDocTask.new(:rdoc) do |rdoc|
    rdoc.rdoc_dir = 'rdoc'
    rdoc.title    = 'Widgets'
    rdoc.options << '--line-numbers' << '--inline-source'
    rdoc.rdoc_files.include('README')
    rdoc.rdoc_files.include('lib/**/*.rb')
  end
rescue LoadError, StandardError => e
  warn "Setting up rdoc failed #{e.class}: #{e.message}: #{__FILE__}:#{__LINE__}"
end

Bundler::GemHelper.install_tasks
