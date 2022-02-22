class ReviewsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @car = Car.find(params[:car_id])
    @review.car = @car
    @review.user = current_user
    if @car.save
      redirect_to @car
    else
      render :new
    end
  end

  def destroy
  end

  private

  def review_params
  end
end
