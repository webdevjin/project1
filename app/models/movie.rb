class Movie < ApplicationRecord
  has_many :forums
  belongs_to :users
end
