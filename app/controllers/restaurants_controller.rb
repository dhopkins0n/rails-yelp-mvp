class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show]
def new
  @restaurant = Restaurant.new
end

def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
end


  def show
  end

  def index
    @restaurants = Restaurant.all
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end
