class TamagotchisController < ApplicationController
  def index
    render json: Tamagotchi.all
  end

  def show
    render json: Tamagotchi.find(params[:id])
  end
end
