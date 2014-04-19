class RestaurantsController < ApplicationController


  def index

    if cuisine = params[:cuisine]
      @restaurants = Restaurant.where("cuisine = ?", cuisine.gsub("_"," "))
    else
      @restaurants = Restaurant.all
    end
    
    @user_name = User.find_by(id:session[:user_id]).first_name.capitalize if authenticated?


    @registration_success = flash[:registration_success]

    @login_message = flash[:login_message]

  end


  def show
    
    @restaurant = Restaurant.find(params[:id])

    @headerimage = @restaurant.name.gsub(/\s+/, "").gsub('\'', "").downcase
    
    @reservation = Reservation.new

    @times_array = generate_times_array
    @dates_array = generate_dates_array

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

    current_slice = @restaurant.opening_hour

    until current_slice > (@restaurant.closing_hour - RESERVATION_LENGTH) do
      times << [current_slice.strftime("%l:%M %P"), current_slice.strftime("%H%M") ]
      current_slice += TIME_INCREMENT
    end
    times
  end

  def generate_dates_array
    dates = []
    date = Date.today

    # Add today and tomorrow manually; they're special cases
    dates << ["Today", date.strftime("%Y-%m-%d")]
    date += 1
    dates << ["Tomorrow", date.strftime("%Y-%m-%d")]
    date += 1

    20.times do 
      dates << [date.strftime("%A, %B %-d"), date.strftime("%Y-%m-%d")]
      date += 1
    end
    dates
  end

  def round_time
    Time.at((Time.now.to_f / 30.minutes).ceil * 30.minutes)
  end


end
