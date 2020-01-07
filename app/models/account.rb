class Account < ApplicationRecord
  belongs_to :user
  has_one :billing_address
end
