require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should belong_to :product } ##May need to change to products here and in review.rb
end
