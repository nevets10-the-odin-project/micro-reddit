class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :password, presence: true, length: { in: 6..20 }

  has_many :posts
  has_many :comments
end
