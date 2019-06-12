require 'ajax_reveal/version'
require 'ajax_reveal/engine'

module AjaxReveal
  class Error < StandardError; end
  # Your code goes here...

  def self.button(text, reveal_name, options = nil)
    options ||= {}
    options[:remote] = true

    path = "/reveals/#{reveal_name}"

    ActionController::Base.helpers.link_to(text, path, options)
  end
end
