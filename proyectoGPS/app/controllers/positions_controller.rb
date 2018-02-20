class PositionsController < ApplicationController

  def new
    @position = Position.new
  end

  def create
    Position.create(position_params)
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def show
    if params[:dia] == nil
      hoy = Date.today
    else
      hoy = DateTime.parse(params[:dia]) + 5.hour
    end
    @positions = current_user.positions.where(created_at: hoy..(hoy+1.day))
  end

  private
  def position_params
    params.require(:position).permit(:user_id, :lat, :lon, :day, :hour)
  end

end
