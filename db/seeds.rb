# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Existing seed
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

# Additional seeds
Flat.create!(
  name: 'Modern Apartment in NYC',
  address: '123 Broadway, New York, NY 10027',
  description: 'A modern and sleek apartment located in the heart of the city. Close to major attractions, dining, and entertainment venues.',
  price_per_night: 150,
  number_of_guests: 4
)

Flat.create!(
  name: 'Cozy Cabin in the Alps',
  address: '45 Mountain Road, Zermatt, Switzerland',
  description: 'Experience tranquility in this cozy cabin in the Alps. Perfect for those looking to escape the hustle and bustle of city life.',
  price_per_night: 100,
  number_of_guests: 2
)

Flat.create!(
  name: 'Beachfront Villa Bali',
  address: '88 Ocean Drive, Bali, Indonesia',
  description: 'Relax and rejuvenate in this beachfront villa. Wake up to the sound of waves and enjoy the breathtaking ocean views.',
  price_per_night: 200,
  number_of_guests: 6
)
