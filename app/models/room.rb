class Room < ActiveRecord::Base
  has_many :user_rooms
  has_many :users, through: :user_rooms
  has_many :messages

  accepts_nested_attributes_for :user_rooms, allow_destroy: true

  scope :not_group, -> { self.where(is_group: false) }
end
