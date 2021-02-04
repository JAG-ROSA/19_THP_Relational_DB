# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
City.destroy_all


#City
10.times do
  city = City.create!(    
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code,
  )
end

#User
10.times do
  user = User.create!(    
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.free_email,
    description: Faker::Lorem.sentence(word_count: 10) ,
    age: rand(15..60),
    city_id: City.pluck(:id).sample,
  )
end


#Gossip
20.times do
  gossip = Gossip.create!(    
    title: Faker::Hipster.sentence(word_count: 4),
    content: Faker::Quote.most_interesting_man_in_the_world ,
    user_id: User.pluck(:id).sample,
  )
end

#Private Message
10.times do
  private_message = PrivateMessage.create!(    
    content: Faker::Quote.most_interesting_man_in_the_world ,
    user_id: User.pluck(:id).sample,
    sender_id: User.pluck(:id).sample,
    recipient_id: User.pluck(:id).sample,
  )
end

#Tags
10.times do
  tag = Tag.create!(    
    title: Faker::Hipster.sentence(word_count: 4),
  )
end


#Mailbox
10.times do
  mailbox = Mailbox.create!(    
    user_id: User.pluck(:id).sample,
    private_message_id: PrivateMessage.pluck(:id).sample,
  )
end

#Hashtag
10.times do
  hashtag = Hashtag.create!(  
    title: Faker::Hipster.sentence(word_count: 4), 
    tag_id: Tag.pluck(:id).sample,  
    gossip_id: Gossip.pluck(:id).sample,
  )
end

