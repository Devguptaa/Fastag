class FastagsController < ApplicationController
  def new

    @vehicle = Vehicle.find(params[:vehicle_id])
    @fastag = @vehicle.build_fastag
  end




  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @fastag = @vehicle.build_fastag(fastag_params)

    if @fastag.save
      redirect_to @vehicle, notice: "Fastag was successfully created."
    else
      render :new
    end
  end

  def destroy
    @fastag = Fastag.find(params[:id])
    @fastag.destroy
    redirect_to @fastag.vehicle, notice: "Fastag was successfully destroyed."
  end

  def show
    @fastag = Fastag.find(params[:id])
  end

  def index
    @vehicle = Vehicle.find(params[:vehicle_id])
    @fastags = @vehicle.fastags
  end

  private
    def fastag_params
      params.require(:fastag).permit(:accountnumber, :vehiclenumber, :vehicle_id)
    end
end
