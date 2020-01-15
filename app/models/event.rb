class Event < ApplicationRecord
  belongs_to :contact
  belongs_to :user
  has_many :orders
end
