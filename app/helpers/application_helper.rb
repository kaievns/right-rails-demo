# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def menu_link_to(text, url, options={})
    content_tag :li,
      link_to(text, url, options),
      :class => request.request_uri.starts_with?(url) ? :current : nil
  end
end
