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

5.times do 
    User.create(
        username: Faker::Internet.email,
        password: 123,
        email: Faker::Internet.email,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name 
    )
end 

User.create(
    username: 'jjenkins120',
    password: 123,
    email: 'jjenkins120@gmail.com',
    first_name: 'Jeff',
    last_name: 'Jenkins'
)

puts "Seeding Notes"

50.times do
    Note.create(
        title: Faker::Book.title, 
        content: Faker::Movies::Lebowski.quote,
        favorite: Faker::Boolean.boolean,
        user_id: User.all.sample.id
    )
end 

puts "Done!"