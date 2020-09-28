# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Chatroom.create(title: "Main")
Chatroom.create(title: "Second Main")
User.create(username: 'Ward', password: '1234', avatar:'James Cameron')
User.create(username: 'Fred', password: '1234', avatar:'James Cameron')
User.create(username: "Ryan", password: '1234', avatar: "alien")
# Message.create(body: "hey whats up", chatroom_id: 1, user_id: 1)
# Message.create(body: "suuuup", chatroom_id: 2, user_id: 1)
Membership.create(user_id: 1, chatroom_id: 1)
Membership.create(user_id: 2, chatroom_id: 1)
Membership.create(user_id: 2, chatroom_id: 2)


puts "finsished seeding"