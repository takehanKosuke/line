class UsersController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @users = User.all
    @rooms = UserRoom.where(user_id: @user.id).map{|t| Room.find(t.room_id)}
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
