module AjaxReveal
  class Configuration
    attr_accessor :raise_page_error_for_missing_partials,
                  :default_path

    def initialize
      # boolean to tell AjaxReveal to throw an error on a page that is trying
      # to render a non-existant partial or not.
      @raise_page_error_for_missing_partials = true

      # path that AjaxReveal will look in for any partials that are not found
      # by the default rails partial finder methods.
      #
      # Can be set to <tt>false</tt> to not have a default path.
      #
      # TODO: Allow arrays for multiple default paths to check
      @default_path = 'static_modals'
    end
  end
end
