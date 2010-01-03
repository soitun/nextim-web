# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def nav value=nil
    if value.nil?
      self.class.read_inheritable_attribute(:nav)
    else
      self.class.write_inheritable_attribute(:nav,value)
    end
  end

  class << self

    def nav name
      write_inheritable_attribute(:nav, name)
    end
  end

end
