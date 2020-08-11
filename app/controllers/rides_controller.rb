class RidesController < ApplicationController
  def create
    ride = Ride.create(ride_params)
    message = ride.take_ride
    redirect_to user_path(current_user), notice: message
  end

  private

  def ride_params
    params.require(:ride).permit(:user_id, :attraction_id)
  end
end