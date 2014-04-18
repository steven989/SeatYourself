class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  RESERVATION_LENGTH = 1.5.hours
  TIME_INCREMENT = 0.5.hours

  
end
