module AjaxRevealHelper
  def ajax_reveal(text, partial_path, options = {})
    if lookup_context.find_all(partial_path).any?
      path = ajax_reveal_show_path(CGI.escape(partial_path))
    elsif lookup_context.find_all("reveals/#{partial_path}")
      path = ajax_reveal_show_path(CGI.escape("reveals/#{partial_path}"))
    else
      raise StandardError, 'Specified Partial for ajax_reveal does not exist'
    end

    options[:remote] = true

    link_to(text, path, options)
  end
end
