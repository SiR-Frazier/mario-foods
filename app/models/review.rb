class Review < ActiveRecord::Base
  belongs_to :products
  validates :author, :presence => true

end
