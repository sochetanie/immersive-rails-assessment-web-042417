class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
helper_method :current_user, :check_status

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def check_status
        unless logged_in?
            flash[:error] = "Your need to log in"
            redirect_to root_path
        end
    end
    
end
