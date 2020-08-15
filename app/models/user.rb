class User < ApplicationRecord

  # has_secure_password

  devise :database_authenticatable, :registerable, :recoverable

  # attr_accessor :password_confirmation

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, length: { minimum: 6}
  # validate :password_match, on: :create

  # def password_match
  #   if encrypted_password != password_confirmation
  #     errors.add(:encrypted_password, "Password don't match")
  #   end
  # end

end
