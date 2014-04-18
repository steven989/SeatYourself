class RestaurantsController < ApplicationController


  def index
    
    @user_name = User.find_by(id:session[:user_id]).first_name.capitalize if authenticated?

    @restaurants = Restaurant.all

    @registration_success = flash[:registration_success]

    @login_message = flash[:login_message]

  end


  def show
    
    @restaurant = Restaurant.find(params[:id])
    
    @reservation = Reservation.new

    @times_array = generate_times_array

    @reviews = @restaurant.reviews

  end


  def new

    @restaurant = Restaurant.new

  end 


  def create

    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      
      redirect_to restaurant_path(@restaurant), flash: {rest_create: "Restaurant successfully saved!" }

    else 
      render :new
    end 

  end 




  private

  def restaurant_params

    params.require(:restaurant).permit(:name,:description,:cuisine,:capacity,:location,:address,:display_image_url)

  end 

  def generate_times_array

    times = []
    1.0.hour/TIME_INCREMENT*48.times do |counter|
      new_time = round_time + (counter * TIME_INCREMENT)
      times << [new_time.strftime("%l:%M %P"), new_time.strftime("%H%M"), ]
    end
    times
  end

  def round_time
    Time.at((Time.now.to_f / 30.minutes).ceil * 30.minutes)
  end


end
