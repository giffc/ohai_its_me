class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :register_partials if Rails.env.development?
  
  def register_partials
    HandlebarsConfig.register_partials
  end
end
