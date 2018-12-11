module RoomsHelper
  def read(message, room)
    UserRead.where(room_id: room.id, message_id: message.id).count
  end
end
