class Product < ActiveRecord::Base

  validates :description, presence: true
  validates :in_stock_counter, presence: true
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :sold_counter, presence: true

end
