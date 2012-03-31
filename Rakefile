desc "Run web server on port 3000"
task :run do
  require File.expand_path('app/application')
  require 'rack/handler/webrick'
  app = Application.start_rack_app
  server = Rack::Server.new :app => app, :server => 'webrick', :Port => 3000
  server.start
end

desc "Open application in browser"
task :open do
  `open http://localhost:3000/index.html`
end

begin
  require 'jasmine'
  load 'jasmine/tasks/jasmine.rake'
rescue LoadError
  task :jasmine do
    abort "Jasmine is not available. In order to run jasmine, you must: (sudo) gem install jasmine"
  end
end

desc "Build all files to public directory"
task :build do
  require 'guard'
  Guard.setup
  Guard::Dsl.evaluate_guardfile(:group => [:build])
  Guard.guards.each do |guard|
    guard.run_all
  end
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec => ["build"])

desc "Default task runs specs"
task :default => ["spec", "jasmine:ci"]
