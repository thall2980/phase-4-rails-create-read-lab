class PlantsController < ApplicationController

    def index
        plants = Plant.all
        render json: plants, status: :ok
    end

    def show
        render json: Plant.find_by(id: params[:id]), status: :ok
    end

    def create
        render json: Plant.create(params.permit(:name, :image, :price)), status: :created
    end
end
