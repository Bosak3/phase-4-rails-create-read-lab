class PlantsController < ApplicationController
    
    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plants = Plant.find_by(id: params[:id])
        render json: plants
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end



    private

    def plant_params
        params.permit(:name, :price, :image)
    end

end
