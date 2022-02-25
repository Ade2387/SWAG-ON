class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  def index
    @cars = Car.all

    if params[:query].present?
      @cars = Car.global_search(params[:query])
    else
      @cars = Car.all
    end
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @category_ids = params[:car][:categories]
    @car.user = current_user
    if @car.save
      @category_ids.each do |id|
        @category = Category.find(id)
        @car.categories << @category
      end
      redirect_to @car, notice: 'Your car has been successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to @car, notice: 'Your car was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path, notice: 'Your car was successfully deleted.'
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand, :model, :price, :capacity, :occasion, :description, :photo)
  end
end
