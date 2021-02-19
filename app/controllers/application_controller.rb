class ApplicationController < ActionController::Base

    private
    
    def log_in(user)
        session[:user_id] = user.id
    end

    def current_user
        User.find_by(id: session[:user_id])
    end

    def logged_in?
        !!current_user
    end
    
    def authenticate
        redirect_to login_path if !logged_in?
    end

end
