class Product < ActiveRecord::Base
  belongs_to :user

  validates :name, :description, :category_id, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 0}
end
