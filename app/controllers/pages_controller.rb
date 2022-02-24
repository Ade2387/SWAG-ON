class PagesController < ApplicationController
  def home
    @cars = Car.all
  end

  def dashboard
    @user = current_user
    @reviews = @user.reviews
    @reservations = @user.reservations
    @cars = @user.cars
    @reservationrequests = []
    @cars.each do |car|
      car.reservations.each do |reservation|
        @reservationrequests.push(reservation)
      end
    end
  end
end
