class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

    def index
        @restaurants = Restaurant.all
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.create(restaurant_params)
    end

    def edit
        @restaurant = Restaurant.find(params[:id])
        redirect_to restaurants_path
    end

    def update
        @restaurant = Restaurant.find(params[:id])
        @restaurant = Restaurant.update(restaurant_params)
    end

    def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        redirect_to restaurants_path
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :stars)
    end

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
end
