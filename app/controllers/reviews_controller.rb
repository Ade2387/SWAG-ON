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
    if @review.save
      redirect_to @car
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @car = @review.car
    @review.destroy
    redirect_to car_path(@car)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
