class UsersController < ApplicationController

    def new
    
        @user = User.new

    end 

    def create

        @user = User.new(user_params)

        if @user.save

            redirect_to restaurants_path, flash: {registration_success: "Registration successful. Welcome to SeatYourself #{@user.first_name.capitalize}!"}

        else

            render :new

        end

    end

    def show
    end 

    def destroy
    end 

    private

    def user_params

        params.require(:user).permit(:name,:password,:password_confirmation,:first_name,:last_name,:user_type,:active_status)

    end

end
