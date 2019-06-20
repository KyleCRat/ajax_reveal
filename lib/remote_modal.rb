require 'remote_modal/configuration'
require 'remote_modal/version'
require 'remote_modal/engine'

module RemoteModal
  class Error < StandardError; end

  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
