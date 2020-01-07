class Shipping < ApplicationRecord
  belongs_to :order
  belongs_to :address
  belongs_to :event
end
