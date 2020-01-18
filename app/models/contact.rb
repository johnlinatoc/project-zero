class Contact < ApplicationRecord
  belongs_to :user
  has_many :addresses
  has_many :events
end
