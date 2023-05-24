require "faker"

puts 'Starting seed...'

puts 'Cleaning db...'

Restaurant.destroy_all

puts 'Creating restaurants...'

5.times do
  Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone, category: Restaurant::CATEGORY.sample)
end

puts "Finished! Just created #{Restaurant.count} restaurants."
# Faker::Restaurant.review
