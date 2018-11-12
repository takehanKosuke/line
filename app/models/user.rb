class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    validates :name, presence: true
    validates :image, presence: true

    has_many :user_rooms
    has_many :messages
    has_many :rooms, through: :user_rooms

    enum status: { nomal: 0, ban: 1}

    mount_uploader :image, ImageUploader
end
