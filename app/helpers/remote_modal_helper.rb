module RemoteModalHelper
  # Creates a link_to rails helper that will remotely render the partial
  # specified by :partial_path in a modal.
  #
  # options[:remote] will always be set to true, since it is requried to hit the
  # controller as a js request to remotely render the modal.
  #
  # other options can be passed as a hash to remote_modal just like they can be
  # passed to link_to. See https://apidock.com/rails/ActionView/Helpers/UrlHelper/link_to
  # for more information on the html_options that can be passed.
  def remote_modal(text, partial_path, options = {})
    throw_template_error_if_partial_is_missing(partial_path)

    href = remote_modal_show_path(CGI.escape("/#{partial_path}"))
    options[:remote] = true

    link_to(text, href, options)
  end

  private

  # Renders the known missing partial directly so rails will throw a
  # ActionView::MissingTemplate error on the page trying to render a link_to
  # with a path to a partial that does not exist. This checks if the partial
  # exists within <tt>app/views</tt> or in the directory set by the gem's
  # defualt_path configuration.
  #
  # if default_path is set to false, this only checks <tt>app/views</tt>
  #
  # TODO: throw an error rather than render the partial for error.
  def throw_template_error_if_partial_is_missing(partial_path)
    @raise_err = RemoteModal.configuration.raise_page_error_for_missing_partials
    return unless @raise_err

    partial = File.basename(partial_path)
    path = File.dirname(partial_path)
    default_path = "#{RemoteModal.configuration.default_path}/#{path}"

    return if lookup_context.template_exists?(partial, path, true)
    return if RemoteModal.configuration.default_path &&
              lookup_context.template_exists?(partial, default_path, true)

    render "/#{partial_path}"
  end
end
