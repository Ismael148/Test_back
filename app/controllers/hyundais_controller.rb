class HyundaisController < ApplicationController
     def index
        @hyundais = Hyundai.all
    end

    def show
        @hyundais = Hyundai.find(params[:id])
    end
    def edit
        @hyundais = Hyundai.find(params[:id])
    end
    def update
        @hyundais = Hyundai.find(params[:id])
        @hyundais.update(hyundai_params)
        redirect_to hyundai_path        
    end
    def new
        @hyundais = Hyundai.new
    end

    def create
        hyundai = Hyundai.create(hyundai_params)
        redirect_to hyundai_path(hyundai.id)
    end
    def destroy
        @hyundais = Hyundai.find(params[:id])
        @hyundais.destroy
        redirect_to hyundai_path
    end

    private

    def hyundai_params
        params.require(:hyundai).permit(:name, :description, :kilometers)
    end

    
end
