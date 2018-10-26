class RoomsController < ApplicationController
  def show
    @user = current_user
    @room = Room.find(params[:id])
    @messages = @room.messages.all.order(created_at: :desc)
  end
end
