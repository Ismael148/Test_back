class AudisController < ApplicationController
    def index
        @audis = Audi.all
    end

    def show
        @audis = Audi.find(params[:id])
    end
    def edit
        @audis = Audi.find(params[:id])
    end
    def update
        @audis = Audi.find(params[:id])
        @audis.update(audi_params)
        redirect_to audi_path        
    end
    def new
        @audis = Audi.new
    end

    def create
        audi = Audi.create(audi_params)
        redirect_to audi_path(audi.id)
    end
    def destroy
        @audis = Audi.find(params[:id])
        @audis.destroy
        redirect_to audis_path
    end

    private

    def audi_params
        params.require(:audi).permit(:name, :description, :kilometers)
    end
end
