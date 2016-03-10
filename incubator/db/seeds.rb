require 'faker'
Project.delete_all
20.times  do |i|
  Project.create(
    id: i,
    name: Faker::App.name,
    started_at: Faker::Date.between(3000.year.ago, Date.today),
    creator: Faker::StarWars.character,
    cost: Faker::Commerce.price,
    body: Faker::Hacker.say_something_smart
  )
end
