require 'rack'
require 'sprockets'
PUBLIC_DIR_PATH = File.join(File.dirname(__FILE__), '..', 'public')
class Application
  class << self
    def start_rack_app
      Rack::Builder.new do
        map '/assets' do
          env = Sprockets::Environment.new
          env.append_path 'src/js'
          env.append_path 'src/scss'
          run env
        end
        map "/" do
          use Rack::CommonLogger, $stderr
          use Rack::ShowExceptions
          use Rack::Static, :urls => ["/"], :root => PUBLIC_DIR_PATH
          use Rack::Lint
          run lambda {|env| [404, {}, '']}
        end
      end.to_app
    end
  end
end
