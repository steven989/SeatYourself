class ReviewsController < ApplicationController

    def create

        @review = Restaurant.find_by(id:params[:restaurant_id]).reviews.new(review_params)

        @review.save

        redirect_to restaurant_path(Restaurant.find_by(id:params[:restaurant_id]))


    end 

    private

    def review_params

        params.require(:review).permit(:title,:content,:rating,:user_id)

    end 

end
