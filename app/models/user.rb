class User < ApplicationRecord

  has_secure_password

  validates :name, presence: true
  validates :name, length: { minimum: 6}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
