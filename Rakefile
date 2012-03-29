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
