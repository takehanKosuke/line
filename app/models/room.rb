# == Schema Information
#
# Table name: rooms
#
#  id              :bigint(8)        not null, primary key
#  last_message_at :datetime         not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  is_group        :boolean          default(FALSE), not null
#

class Room < ActiveRecord::Base
  has_many :user_rooms
  has_many :users, through: :user_rooms
  has_many :messages
  has_many :user_reads

  accepts_nested_attributes_for :user_rooms, allow_destroy: true

  scope :not_group, -> { self.where(is_group: false) }
end
