# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

15.times do
  city = City.create!(    
    city_name: ["Paris", "Nantes","Lyon","Bordeaux","Rennes","Montpellier", "Sisteron", "Lille"].sample, 
    dog_id: Dog.pluck(:id).sample,
    dogsitter_id: Dogsitter.pluck(:id).sample,
  )
end

15.times do
  dogsitter = Dogsitter.create!(    
    name: Faker::Creature::Dog.name,
    city_id: City.pluck(:id).sample,
  )
end

15.times do
  dog = Dog.create!(    
    name: Faker::Creature::Dog.name,
    race: Faker::Creature::Dog.breed,
    city_id: City.pluck(:id).sample,
  )
end


15.times do
  stroll = Stroll.create!(    
    date: Faker::Time.between(from: '2020-09-01', to: '2021-02-04'),
    dog_id: Dog.pluck(:id).sample,
    dogsitter_id: Dogsitter.pluck(:id).sample,
  )
end

15.times do
  city = City.update(
    dog_id: Dog.all.sample.id,
    dogsitter_id: Dogsitter.all.sample.id,
  )
end