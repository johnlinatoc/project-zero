class User < ApplicationRecord
  has_many :contacts
  has_many :accounts
end
