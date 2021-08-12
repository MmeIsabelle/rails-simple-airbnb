puts "Cleaning the database..."
Flat.destroy_all

puts "Adding flats..."
4.times do
  Flat.create!(
    name: "#{Faker::Adjective.positive.capitalize} & #{Faker::Adjective.positive.capitalize} Flat in #{Faker::Address.city}",
    address: Faker::Address.street_address,
    description: "#{Faker::Marketing.buzzwords} - #{Faker::Lorem.sentence(word_count: 15)}",
    price_per_night: rand(15..50) * 5,
    number_of_guests: rand(1..6)
  )
end
puts "4 flats created"