class Review < ActiveRecord::Base
  belongs_to :product #if I run into issues, double-check that it's not products
  validates :author, :presence => true

end
