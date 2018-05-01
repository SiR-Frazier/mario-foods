require 'rails_helper'

describe "create a new review" do
  it "adds a new review" do
    product = Product.create(:name => "yogurt", :country_origin => "Greece", :price => "8.99")
    click_link 'Leave a review'
    fill_in 'comment', :with => 'amazing! I love eating it with salad and salmon. I cannot recommend it enough!'
    fill_in 'rating', :with => '5'
    fill_in 'author', :with => 'Ryan'
    click_on 'Create Review'
    expect(page).to have_content products_path(product)
  end
end
