require 'faker'
Project.delete_all
UsablePerson.delete_all
User.delete_all
Work.delete_all
Description.delete_all
20.times  do |i|

  body = Faker::Hacker.say_something_smart
  rand(30..60).times do |j|
    dividend = j % 5
    if dividend == 0 and rand(0..3) == 3
      body+="\n\n"
    end
    body+=" "+Faker::Hacker.say_something_smart
  end

  Project.create(
    id: i,
    name: Faker::App.name,
    started_at: Faker::Date.between(3000.year.ago, Date.today),
    creator: Faker::StarWars.character,
    cost: Faker::Commerce.price,
    body: body
  )
end

body = Faker::Hacker.say_something_smart
finnish = Faker::Hacker.say_something_smart
rand(15..20).times do |j|
  dividend = j % 5
  if dividend == 0 and rand(0..3) == 3
    body+="\n\n"
    finnish+="\n\n"
  end
  body+=" "+Faker::Hacker.say_something_smart
  finnish+=" "+Faker::Hacker.say_something_smart
end

Description.create(
  id: 1,
  name: "Home",
  body: body,
  finnish: finnish
)
#100.times do |i|
  #first
  #UsablePerson.create(
    #id: i,
    #firstname:
  #)
#end
