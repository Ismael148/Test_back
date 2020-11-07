class NissansController < ApplicationController
    def index
        @nissans = Nissan.all
    end

    def show
        @nissans = Nissan.find(params[:id])
    end
    def edit
        @nissans = Nissan.find(params[:id])
    end
    def update
        @nissans = Nissan.find(params[:id])
        @nissans.update(hyundai_params)
        redirect_to hyundai_path        
    end
    def new
        @nissans = Nissan.new
    end

    def create
        nissan = Nissan.create(hyundai_params)
        redirect_to nissan_path(nissan.id)
    end
    def destroy
        @nissans = nissan.find(params[:id])
        @nissans.destroy
        redirect_to nissan_path
    end

    private

    def nissan_params
        params.require(:nissan).permit(:name, :description, :kilometers)
    end

end
