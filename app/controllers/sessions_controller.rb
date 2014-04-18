class SessionsController < ApplicationController

    def new

    end 

    def create

        @user = User.find_by(name:params[:name])

    if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to restaurants_path, flash: {login_message: "Login Successful. Welcome back #{@user.first_name.capitalize}!"}
    else 
        render :new
    end 


    end

    def destroy


        session[:user_id] = nil


        redirect_to restaurants_path, flash: {login_message: "Logout Successful!"}        

    end 

end
