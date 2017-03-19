class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email
  has_many :posts
  has_many :forums
  has_many :movies
end
