require 'ajax_reveal/configuration'
require 'ajax_reveal/version'
require 'ajax_reveal/engine'

module AjaxReveal
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
