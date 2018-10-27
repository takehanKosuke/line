class UsersController < ApplicationController
  def index
    @user = User.find(current_user.id)
    # ユーザーの持っているルームを出す
    has_user_rooms = @user.rooms
    # そのルームに紐づくuser_idを配列で取る
    already_friends = UserRoom.where(room_id: has_user_rooms).pluck(:user_id).uniq
    # その配列以外のuser_idを持つユーザーを返す
    @users = User.where.not(id: already_friends).where.not(id: @user.id)

    @rooms = @user.rooms.order(last_message_at: :desc)
    @room = Room.new
    @room.user_rooms.build
  end

  def show
    @users = User.find(current_user.id)
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update(user_params)
    redirect_to "/"
  end

  private
  def update_params
    params.require(:user).permit(:image, :name)
  end
end
