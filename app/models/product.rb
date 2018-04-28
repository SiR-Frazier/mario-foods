class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :country_origin, :presence => true
  validates :price, :presence => true

  scope :from_USA, -> { where(country_origin: 'United States').limit(3) }

  scope :most_reviews, -> {(
   select("products.id, products.name, products.country_origin, products.price")
   .joins(:reviews)
   .group("products.id")
   .limit(3))}

   scope :recently_reviewed, -> { order(created_at: :desc).limit(3)}

end
