class MessagesController < ApplicationController
  def create
    @room = Room.find(params[:message][:room_id])
    @message = Message.new(message_params)
    if @message.save
      @room.update(last_message_at: Time.now)
      redirect_to room_path(@room.id)
    else
      redirect_to room_path(@room.id)
    end
  end

  private
  def message_params
    params.require(:message).permit(
      :content,
      :room_id,
      :user_id
    )
  end
end
