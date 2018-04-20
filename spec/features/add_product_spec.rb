require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add Product'
    fill_in 'name', :with => 'Goat Cheese'
    fill_in 'country of origin', :with => 'Greece'
    fill_in 'price', :with => '5.99'
    click_on 'Create Product'
    expect(page).to have_content 'Products'
  end

  # it "gives error when no name is entered" do
  #   visit new_product_path
  #   click_on 'Create Product'
  #   expect(page).to have_content 'Please fill out this field.'
  # end
end
