class StatusesController < ApplicationController
  def create
    status = Status.create(status_params)
    render json: status
  end

  def show
    render json: Status.find(params[:id])
  end

  def user_statuses
    render json: Status.where('user_id = ?', params[:id])
  end

  private def status_params
    params.require(:status).permit(:user_id, :tamagotchi_id)
  end
end
