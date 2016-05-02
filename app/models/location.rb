class Location < ActiveRecord::Base
  has_many :products, through: :users
  has_many :users
end
