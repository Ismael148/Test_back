class FordsController < ApplicationController
     def index
        @fords = Ford.all
    end

    def show
        @fords = Ford.find(params[:id])
    end
    def edit
        @fords = Ford.find(params[:id])
    end
    def update
        @fords = Ford.find(params[:id])
        @fords.update(ford_params)
        redirect_to ford_path        
    end
    def new
        @fords = Ford.new
    end

    def create
        ford = Ford.create(ford_params)
        redirect_to ford_path(ford.id)
    end
    def destroy
        @fords = Ford.find(params[:id])
        @fords.destroy
        redirect_to ford_path
    end

    private

    def ford_params
        params.require(:ford).permit(:name, :description, :kilometers)
    end

    
end
