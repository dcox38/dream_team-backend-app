class User < ApplicationRecord
  has_many :teams

  has_secure_password
  validates :email, presence: true, uniqueness: true
end
