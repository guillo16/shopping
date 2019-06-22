class Order < ApplicationRecord
  belongs_to :user
  monetize :price_cents
end
