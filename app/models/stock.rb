class Stock < ApplicationRecord
  belongs_to :product
  validates_presence_of :product_id, :count
  validates :count, length: { minimum: 1, maximum: 1000 }

end
