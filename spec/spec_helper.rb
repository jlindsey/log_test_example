$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$:.unshift(File.dirname(__FILE__))
require 'rspec'
require 'example'

RSpec.configure do |config|
  config.before(:each) do
    require 'stringio'

    @log = StringIO.new
    @logger = Logger.new @log

    Example.class_variable_set :@@logger, @logger
  end

  def log
    @log.string
  end
end

