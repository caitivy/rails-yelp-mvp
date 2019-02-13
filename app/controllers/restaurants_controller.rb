class RestaurantsController < ApplicationController
   def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path
    else
      render :new
    end
    def new
    end
    private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
end
