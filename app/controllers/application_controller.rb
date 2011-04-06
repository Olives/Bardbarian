class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_active_nav

  def set_active_nav
    @active_nav = params[:controller]
  end


end
