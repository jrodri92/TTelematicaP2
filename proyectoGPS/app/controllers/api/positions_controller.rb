class Api::PositionsController < ApplicationController
    
    skip_before_action :authenticate_user!
    skip_before_action :verify_authenticity_token
    
    def create
        
        # $user_id = params[:user_id]
        # $lat = params [:lat]
        # $lon = params [:lon]
        # $day = params [:day]
        # $hour = params [:hour]
        # @position = Position.new
        # @position.lat = $lat
        # @position.lon = $lon
        # @position.day = $day
        # @position.hour = $hour
        # @position.user_id = User.find($user_id)
        
        Position.create(position_params)
        respond_to do |format|
            format.html {}
            format.json {}
        end
        if @position.save
            render json: @position, status: :created
        else
            render json: @position.errors, status: :unprocessable_entity
        end
    end
    private
      def position_params
        params.require(:position).permit(:user_id, :lat, :lon, :day, :hour)
      end
end
