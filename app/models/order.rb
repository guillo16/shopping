class Order < ApplicationRecord
  belongs_to :user
  has_one :car
  monetize :amount_cents
end
