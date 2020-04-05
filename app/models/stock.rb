class Stock < ApplicationRecord
  belongs_to :product
  validates_presence_of :product_id, :count
end
