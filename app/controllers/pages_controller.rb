class PagesController < ApplicationController
  def home
    @cars = Car.all
  end
end
