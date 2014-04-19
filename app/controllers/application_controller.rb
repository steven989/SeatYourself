class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  RESERVATION_LENGTH = 1.5.hours
  TIME_INCREMENT = 0.5.hours


  def authenticated?
   
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]

  end 


  def generate_times_array

    times = []
    
    20.times do |counter|
      new_time = round_time + (counter * TIME_INCREMENT)
      # Break at 10PM
      break if new_time.hour > 22

      times << [new_time.strftime("%l:%M %P"), new_time.strftime("%H%M") ]

    end
    times
  end

  helper_method :authenticated?

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
