class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery with: :exception

  def authenticate_user! 
    redirect_to ‘/login’ unless current_user 
  end 
end
