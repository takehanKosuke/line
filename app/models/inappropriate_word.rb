class InappropriateWord < ActiveRecord::Base
  validates :word, presence: true
end
