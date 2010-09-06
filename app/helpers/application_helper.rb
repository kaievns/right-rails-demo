# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def menu_link_to(text, url, options={})
    content_tag :li,
      link_to(text, url, options),
      :class => request.fullpath.starts_with?(url) ? :current : nil
  end
  
  def link_to_remote_edit(unit, options={})
    link_to "Edit", [:edit, unit], options.merge(:class => "edit ajax_edit")
  end
  
  def link_to_remote_destroy(unit, options={})
    link_to "Destroy", unit, :method => :delete, :confirm => 'Are you sure?', :remote => true
  end
end
