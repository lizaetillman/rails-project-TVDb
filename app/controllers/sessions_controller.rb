class SessionsController < ApplicationController

    def new
        @user = User.new
        render :login
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to dashboard_path
        else
            #add flash error message "Invalid Credentials Given. Please try again."
            redirect_to 'login'
        end
    end

    def home
    end

    #logout
    def destroy
        session.clear #or should this line be 'session.delete :user_id'?
        redirect_to '/'
    end
    
end