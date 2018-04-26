class Review < ActiveRecord::Base
  belongs_to :product #if I run into issues, double-check that it's not products
  validates :author, :presence => true
  validates_numericality_of :rating, greater_than_or_equal_to: 1, less_than_or_equal_to: 5
  validates :comment, presence => true, length: { in: 50..250 }
  #validates :product_id presence => true ## may not be necessary

end
