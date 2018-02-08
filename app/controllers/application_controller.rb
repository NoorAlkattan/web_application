class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  protected
    def after_sign_in_path_for(resource)
      people_path
    end
  # private

  # def authenticate_user!
  #   if current_user
  #     if current_user.token_expired?
  #       redirect_to signout_path(user_id: current_user.id)
  #     else
  #       current_user.refresh_token!
  #     end
  #   else
  #     redirect_to root_url
  #   end
  # end

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end

  # helper_method :current_user
end