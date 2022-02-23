class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if !car_params[:image].empty?
      @car.image = car_params[:image]
    else
      @car.image = "https://i.pinimg.com/564x/77/b8/1b/77b81bd9b49ea414cc73c06481c965e1.jpg"
    end
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
    if @car.update(garden_params)
      redirect_to @car, notice: 'Your car was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @garden.destroy
    redirect_to @cars, notice: 'Your car was successfully deleted.'
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:brand, :model, :price, :capacity, :occasion, :description, :image)
  end
end
