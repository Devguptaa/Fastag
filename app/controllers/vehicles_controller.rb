class VehiclesController < ApplicationController
  # before_action :vali,only: [:show,:destroy]
  def index
    @vehicles=Vehicle.all
  end
  def show
    @vehicle = Vehicle.find(params[:id])
  end
  def new
    @vehicle=Vehicle.new
  end
  def create
    @vehicle=vehicles.build(vehicle_params)
    if @vehicle.save
      redirect_to @vehicle
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @vehicle=Vehicle.find(params[:id])
  end
  def update
    @vehicle=Vehicle.find(params[:id])
    if @vehicle.update(vehicle_params)
      redirect_to @vehicle
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @vehicle=Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to root_path
  end
  private
    def vehicle_params
      params.require(:vehicle).permit(:vehicle_number, :vehicle_model)
    end
    def vali
      @vehicle=Vehicle.find(params[:id])
      if @vehicle.user_id == current_user.id

      else
        redirect_to root_path,notice: "Not authorized to do this"
      end
    end
end
