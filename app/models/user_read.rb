# == Schema Information
#
# Table name: user_reads
#
#  id         :bigint(8)        not null, primary key
#  room_id    :integer          not null
#  user_id    :integer          not null
#  message_id :integer          not null
#

class UserRead < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  belongs_to :room
end
