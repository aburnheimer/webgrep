require 'rubygems'
require 'rack'
require 'thin'

class PhoneyHttpServer

  def call(env)
    [200, {"Content-Type" => "text/html", "Content-Length" => "23"}, ["PhoneyHttpServer ", "booyah"] ]
  end

end

Thin::Server.start('0.0.0.0', 3000) do
  use Rack::CommonLogger
  use Rack::ShowExceptions
  map "/first.html" do
    use Rack::Lint
    run PhoneyHttpServer.new
  end
end
