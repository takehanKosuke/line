class UsersController < ApplicationController
  before_action :user_account_ban?

  def index
    @user = current_user
    @rooms = @user.rooms.order(last_message_at: :desc)
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

  def add_friend
    @user = current_user
    # ユーザーの持っているルームを出す
    has_user_rooms = @user.rooms.not_group
    # そのルームに紐づくuser_idを配列で取る
    already_friends = UserRoom.where(room_id: has_user_rooms).pluck(:user_id).uniq
    # その配列以外のuser_idを持つユーザーを返す
    @users = User.where.not(id: already_friends).where.not(id: @user.id)
  end

  def group_create
    @room = Room.new
    @room.user_rooms.build
  end

  private
  def update_params
    params.require(:user).permit(:image, :name)
  end

  def user_account_ban?
    if user_signed_in?
      if current_user.ban?
        redirect_to ban_index_path
      end
    end
  end
end
