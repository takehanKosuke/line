class Message < ActiveRecord::Base
  belongs_to :room
  belongs_to :user
  has_many :user_reads

  validates :content, presence: true
end
