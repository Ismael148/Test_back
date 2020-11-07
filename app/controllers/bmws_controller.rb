class BmwsController < ApplicationController
    def index
        @bmws = Bmw.all
    end

    def show
        @bmws = Bmw.find(params[:id])
    end
    def edit
        @bmws = Bmw.find(params[:id])
    end
    def update
        @bmws = Bmw.find(params[:id])
        @bmws.update(bmw_params)
        redirect_to bmw_path        
    end
    def new
        @bmws = Bmw.new
    end

    def create
        bmw = Bmw.create(bmw_params)
        redirect_to bmw_path(bmw.id)
    end
    def destroy
        @bmws = Bmw.find(params[:id])
        @bmws.destroy
        redirect_to bmw_path
    end

    private

    def bmw_params
        params.require(:bmw).permit(:name, :description, :kilometers)
    end

    
end
