class User < ApplicationRecord
  has_secure_password
  has_many :contacts
  has_many :accounts
  has_many :orders
  has_many :events
  has_many :billing_addresses, through: :accounts
  validates :email, uniqueness: { case_sensitive: false }
end
