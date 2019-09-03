class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    # render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]} and cat '#{params[:category]}"
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render "new"
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
