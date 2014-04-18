class RestaurantsController < ApplicationController
  def index
    if cuisine = params[:cuisine]
      @restaurants = Restaurant.where("cuisine = ?", cuisine.gsub("_"," "))
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new

    @times_array = generate_times_array
    @dates_array = generate_dates_array

  end


  private

  def generate_times_array
    times = []
    20.times do |counter|
      new_time = round_time + (counter * TIME_INCREMENT)
      # Break at 10PM
      break if new_time.hour > 22

      times << [new_time.strftime("%l:%M %P"), new_time.strftime("%H%M"), ]

    end
    times
  end

  def generate_dates_array
    dates = []
    date = Date.today

    # Add today and tomorrow manually; they're special cases
    dates << ["Today", date.strftime("%Y%m%d")]
    date += 1
    dates << ["Tomorrow", date.strftime("%Y%m%d")]
    date += 1

    20.times do 
      dates << [date.strftime("%A, %B %-d"), date.strftime("%Y%m%d")]
      date += 1
    end
    dates
  end

  def round_time
    Time.at((Time.now.to_f / 30.minutes).ceil * 30.minutes)
  end


end
