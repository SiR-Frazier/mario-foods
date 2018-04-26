Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.ingredient,
                          country_origin: Faker::Space.galaxy,
                          price: Faker::Number.between(1,35))
  250.times do |index|
    Review.create!(author: Faker::Name.first_name,
                            rating: Faker::Number.between(1,5),
                            comment: Faker::Simpsons.quote,
                            product_id: Faker::Number.between(1,250))
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
