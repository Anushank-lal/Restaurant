class Restaurant < ApplicationRecord

  has_many :restaurant_shifts, dependent: :destroy
  has_many :tables, dependent: :destroy
  has_many :reservations, dependent: :destroy


  validates :name, :email, :phone, presence: true
  validates :phone, format: { with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/ }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true

end
