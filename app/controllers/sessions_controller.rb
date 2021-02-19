class SessionsController < ApplicationController

    def new
        @user = User.new
        render :login
    end

    def create
    end

    def home
    end

    #logout
    def destroy
        session.clear #or should this line be 'session.delete :user_id'?
        redirect_to '/'
    end
    
end