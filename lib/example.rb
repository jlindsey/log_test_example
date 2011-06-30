require 'logger'
require 'example/app'

module Example
  @@logger = nil

  def self.logger
    @@logger ||= Logger.new $stdout
  end
end

