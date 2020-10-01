# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  Chatroom.create(title: Faker::Lorem.word, img_url: Faker::Avatar.image, description: Faker::Lorem.sentence)
end
Chatroom.create(title: 'Working IMage?', img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/2880px-Image_created_with_a_mobile_phone.png', description: Faker::Lorem.sentence)

User.create(username: 'Ward', password: '1234', avatar: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/2880px-Image_created_with_a_mobile_phone.png')
User.create(username: 'Fred', password: '1234', avatar: 'https://upload.wikimedia.org/wikipedia/en/7/7b/Image_in_Glossographia.png')
User.create(username: "Ryan", password: '1234', avatar: Faker::LoremFlickr.image(size: "50x60"))

10.times do
  User.create(username: Faker::Internet.username, password: '1234', avatar: Faker::LoremFlickr.image(size: "50x60"))
end
# Message.create(body: "hey whats up", chatroom_id: 1, user_id: 1)
# Message.create(body: "suuuup", chatroom_id: 2, user_id: 1)
20.times do 
  Membership.create(user_id: rand(1...10), chatroom_id: rand(1...10))
end

# puts `Chatrooms #{Chatroom.all.count}`
# puts `Users #{User.all.count}`
# puts `Memberships #{Membership.all.count}`
puts "finished seeding"