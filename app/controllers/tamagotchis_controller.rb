class TamagotchisController < ApplicationController
  def index
    render json: Tamagotchi.all
  end

  def show
  end
end
