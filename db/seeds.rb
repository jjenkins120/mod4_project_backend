# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying Seeds"

Note.destroy_all
User.destroy_all

puts "Seeding Users"

20.times do 
    User.create(
        username: Faker::Internet.email,
        password: Faker::Lorem.words,
        email: Faker::Internet.email,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name 
    )
end 

puts "Seeding Notes"

100.times do
    Note.create(
        title: Faker::Book.title, 
        content: Faker::Movies::Lebowski.quote, 
        user_id: User.all.sample.id
    )
end 

puts "Done!"