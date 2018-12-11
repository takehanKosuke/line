module UsersHelper
  def read_counts(room, user)
    # roomの中の全てのメッセージの数を数える
    room_message_count = room.messages.where.not(user_id: user.id).count
    # その中でUserReadのレコードがあるものを数える
    user_read_count = 0
    room.messages.each do |message|
      if UserRead.find_by(room_id: room.id, user_id: user.id, message_id: message.id).present?
        user_read_count += 1
      end
    end
    count = room_message_count - user_read_count
    return count
  end
end
