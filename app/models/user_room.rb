# == Schema Information
#
# Table name: user_rooms
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  room_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserRoom < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
end
