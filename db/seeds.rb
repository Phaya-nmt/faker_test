# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Product.delete.all

100.times do
  Product.transaction do
    Product.create(name: Faker::Commerce.product_name,
      description: Faker::Lorem.paragraphs,
      price: Faker::Commerce.price,
      image: Faker::Avatar.image)
  end
end

puts "#{Product.count} Add"