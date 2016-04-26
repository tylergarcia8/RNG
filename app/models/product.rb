class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  belongs_to :category

  validates :name, :description, :category_id, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 0 }

  def formatted_price
    price_in_dollars = price.to_f
    format("$%.2f", price_in_dollars)
  end
end
