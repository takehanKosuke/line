class RoomsController < ApplicationController
  def show
    @user = current_user
    @room = Room.find(params[:id])
    # roomの参加者以外の人がURLベタ打ちでroomに入ってきたときにトップにリダイレクトさせる
    if @room.users.any?{|u| u == @user}
      @messages = @room.messages.all.order(created_at: :desc)
      # メッセージを既読状態にする
      @messages.where.not(user_id: @user).each do |message|
        message.update(is_read: true)
      end
    else
      redirect_to root_path
    end
  end

  def new
    @user = current_user
    # ユーザーの持っているルームを出す
    has_user_rooms = @user.rooms.not_group
    # そのルームに紐づくuser_idを配列で取る
    already_friends = UserRoom.where(room_id: has_user_rooms).pluck(:user_id).uniq
    # その配列のuser_idを持つユーザーを返す
    @friends = User.where(id: already_friends).where.not(id: @user.id)
    @room = Room.new
    @room.user_rooms.build
  end

  def group_create
    params[:room][:user_ids] << current_user.id
    @room = Room.new(room_params)
    if @room.save
      redirect_to room_path(@room.id)
    else
      render :new
    end
  end

  def create
    @room = Room.new(last_message_at: DateTime.now)
    if @room.save
      UserRoom.create(user_id: params[:user1_id], room_id: @room.id)
      UserRoom.create(user_id: params[:user2_id], room_id: @room.id)
      redirect_to room_path(@room.id)
    else
      render :new
    end
  end

  private
  def room_params
    params.require(:room).permit(
      :is_group,
      :last_message_at,
      user_ids: []
    )
  end
end
