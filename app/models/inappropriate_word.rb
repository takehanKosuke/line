# == Schema Information
#
# Table name: inappropriate_words
#
#  id         :bigint(8)        not null, primary key
#  word       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InappropriateWord < ActiveRecord::Base
  validates :word, presence: true
end
