class User < ApplicationRecord

  validates :first_name, :last_name, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :phone_number, format: { with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/ }

  has_many :reservations

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
