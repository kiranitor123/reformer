class User < ApplicationRecord
  validates :username, length: { minimum: 3 }, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
