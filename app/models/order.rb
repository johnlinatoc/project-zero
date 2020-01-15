class Order < ApplicationRecord
  belongs_to :user
  belongs_to :account
  belongs_to :event
end
