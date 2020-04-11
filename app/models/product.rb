class Product < ApplicationRecord
  has_many :stocks
  validates_presence_of :name
  validates :name, length: { minimum: 5, maximum: 80 }

  def before_destroy
    stocks.each do |s|
      s.destroy
    end
  end

  def current_stock
    stocks.collect(&:count).sum
  end
end
