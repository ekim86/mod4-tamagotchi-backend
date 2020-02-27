class StatusesController < ApplicationController
  def index
  end

  def create
    status = Status.create(status_params)
    render json: status
  end

  def show
    render json: Status.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private def status_params
    params.require(:status).permit(:user_id, :tamagotchi_id)
  end
end
