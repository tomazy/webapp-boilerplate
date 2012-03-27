desc "Run web server on port 3000"
task :run do
  require File.expand_path('app/application')
  require 'rack/handler/webrick'
  app = Application.start_rack_app
  Rack::Handler::WEBrick.run(app, :Port => 3000)
end
