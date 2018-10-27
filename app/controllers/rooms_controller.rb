class RoomsController < ApplicationController
  def show
    @user = current_user
    @room = Room.find(params[:id])
    @messages = @room.messages.all.order(created_at: :desc)
  end



    def create
      binding.pry
      @room = Room.new(room_params)
      # binding.pry
      if @room.save
        redirect_to room_path(@room.id)
      else
        redirect_to root_path
      end
    end

    private
    def room_params
      params.require(:room).permit(
        :last_message_at,
        {user_room_ids: []}
      )
    end
end
