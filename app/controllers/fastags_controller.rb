class FastagsController < ApplicationController
  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @fastag = @vehicle.fastag.build(fastag_params)

    if @fastag.save
      redirect_to @vehicle, notice: "Fastag was successfully created."
    else
      render :new
    end
  end
  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def index
    @vehicle = Vehicle.find(params[:vehicle_number])
    @fastags = @vehicle.fastag
  end

  private
    def fastag_params
      params.require(:fastag).permit(:accountnumber,:vehiclenumber,:vehicle_id)
    end
end
