require "Capybara"
require "Capybara/cucumber"
require "rspec"
require "rack/test"
require "json"
require "sinatra"
require "cucumber"
require "httparty"
require "childprocess"
require "timeout"
require File.expand_path("../Common_Lib",__FILE__) #require
 
include RSpec::Matchers
include Common_functions
 
$timeout = 50
Capybara.configure do |capybara|
 
  Capybara.register_driver :selenium_ff do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
  capybara.default_driver = :selenium_ff #seta o browser que irá rodar o teste
  capybara.run_server = false
  #capybara.app_host ="http://walmart.com.br" 
 
end
 
RSpec.configure do |config|
  config.include Capybara::DSL
end

server = ChildProcess.build("rackup", "--port", "9000")
server.start
Timeout.timeout(3) do
  loop do
    begin
      HTTParty.get('local host here')
      break
    rescue Errno::ECONNREFUSED => try_again
      sleep 0.1
    end
  end
end

at_exit do
  server.stop
end