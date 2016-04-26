class Location < ActiveRecord::Base
  has_many :products, through: :user
  has_many :users
end
