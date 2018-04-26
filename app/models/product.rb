class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :country_origin, :presence => true
  validates :price, 
end
