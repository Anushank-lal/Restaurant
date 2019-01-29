class Restaurant < ApplicationRecord

  has_many :restaurant_shifts
  has_many :tables
  has_many :reservations


  validates :name, :email, :phone, presence: true
  validates :phone, format: { with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/ }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

end
