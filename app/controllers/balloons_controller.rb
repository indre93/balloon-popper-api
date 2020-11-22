class BalloonsController < ApplicationController

  def index # GET /balloons
    balloons = Balloon.all
    render json: balloons
  end

  def show # GET /balloons/:id
    balloon = Balloon.find(params[:id])
    render json: balloon
  end

  def create # POST /balloon
    balloon = Balloon.create(balloon_params)
    render json: balloon
  end

  private

  def balloon_params
    params.require(:balloon).permit(:image_src)
  end

end
