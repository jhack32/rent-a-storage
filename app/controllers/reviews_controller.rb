class ReviewsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    review = Review.new(user: @user, reviewer: current_user, message: params[:review][:message], rating: params[:review][:rating])
    if review.save
      redirect_to user_path(params[:user_id])
    else
      render :show
    end
  end
end