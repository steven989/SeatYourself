class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new

    @times_array = generate_times_array

  end


  private

  def generate_times_array
    times = []
    10.times do |counter|
      new_time = round_time + (counter * TIME_INCREMENT)
      times << [new_time.strftime("%l:%M %P"), new_time.strftime("%H%M"), ]
    end
    times
  end

  def round_time
    Time.at((Time.now.to_f / 30.minutes).ceil * 30.minutes)
  end


end
