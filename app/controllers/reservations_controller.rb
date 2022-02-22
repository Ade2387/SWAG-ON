class ReservationsController < ApplicationController
  def new
    # we need @user en @car in our form
    current_user
    @car = Car.find(params[:car_id])
    @reservation = Reservation.new
  end

  def create
    # we need car_id, user_id, start_date, end_date and status wich is default = pending
    @reservation = Reservation.new(reservation_params)
    @car = Car.find(params[:car_id])
    @reservation.user = current_user
    @reservation.car = @car
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @answer = (@reservation.end_date - @reservation.start_date).to_i
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
