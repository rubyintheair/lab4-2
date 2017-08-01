# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding.rb"
if Photo.count > 0
    print "WARNING: there is existing data."
    puts "To delete all and seed again, run: FORCE=1 rails db:seed"
    exit
end
# Photo.destroy_all

Photo.create!(url: "http://idequals.com/images/business_header_images/la_costa_header.png", username: "La costa", likes_count: 1234)
Photo.create!(url: "http://3.bp.blogspot.com/-OSweHsbV96U/TvlPfVdyulI/AAAAAAAAIn4/EVzQ0lEP9Qc/s1600/6246553_orig.jpg", username: "mexican restaurand", likes_count: 232)
Photo.create!(url: "http://s3-media4.fl.yelpcdn.com/bphoto/HTVTW8lechuGzhZLRG52rA/ls.jpg", username: "Mexican food", likes_count: 11)

puts "Seeded #{Photo.count} photos. "
10.times do
  username = Faker::HowIMetYourMother.character
  caption  = Faker::HowIMetYourMother.quote
  url = Faker::LoremPixel.image("500x500", false, 'sports', nil, username)
  Photo.create!(url: url, username: username,
                caption: caption, likes_count: Faker::Number.number(5))
end