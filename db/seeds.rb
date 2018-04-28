Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.ingredient, country_origin: Faker::Address.country, price: Faker::Number.between(1,35))
end

250.times do |index|
  Review.create!(author: Faker::Name.first_name,rating: Faker::Number.between(1,5), comment: Faker::Lorem.characters(50), product_id: Faker::Number.between(1,50))
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
