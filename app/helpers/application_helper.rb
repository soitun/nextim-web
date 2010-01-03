# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def nav_tag id, title, url, html_options = {}
    add_class_to_options(id == controller.nav ? 'current' : nil, html_options)
    html_options[:id] = id
    content_tag('li', link_to(title, url), html_options )
  end

  #icon
  def icon class_name, options = {}
    options[:class] = 'icon icon-' + class_name
    content_tag(:em, options[:title], options)
  end

  private
  def add_class_to_options class_name, options = nil
    if class_name
      options ||= {}
      options[:class] = options[:class] ? (options[:class] + " " + class_name) : class_name
    end
    options
  end

  def content_tag_with_default_class tag, default_class_name, content_or_options_with_block = nil, options ={}, &block
    if block_given?
      content_or_options_with_block = add_class_to_options(default_class_name, content_or_options_with_block)
    else
      options = add_class_to_options(default_class_name, options)
    end
    content_tag(tag,content_or_options_with_block,options,&block)
  end
end
