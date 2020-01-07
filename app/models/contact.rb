class Contact < ApplicationRecord
  belongs_to :User
  has_many :Addresses
end
