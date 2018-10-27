class RoomsController < ApplicationController
  def show
    @user = current_user
    @room = Room.find(params[:id])
    @messages = @room.messages.all.order(created_at: :desc)
    @messages.where.not(user_id: @user).each do |message|
      message.update(is_read: true)
    end
  end

  def create
    @room = Room.new(last_message_at: DateTime.now)
    if @room.save
      UserRoom.create(user_id: params[:user1_id], room_id: @room.id)
      UserRoom.create(user_id: params[:user2_id], room_id: @room.id)
      redirect_to room_path(@room.id)
    else
      redirect_to root_path
    end
  end
end
