class Forum < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :posts
end
