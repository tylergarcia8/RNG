class Product < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
  belongs_to :location
  
=======
  belongs_to :category

>>>>>>> 4999f38e3ca9a5d5c3b7c0fa7d23ab17a14edf31
  validates :name, :description, :category_id, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 0 }

  def formatted_price
    price_in_dollars = price.to_f
    format("$%.2f", price_in_dollars)
  end
end
