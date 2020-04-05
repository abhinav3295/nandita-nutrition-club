class Product < ApplicationRecord
  has_many :stocks
  validates_presence_of :name
end
