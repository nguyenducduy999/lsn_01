# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

99.times do |n|
  name = Faker::Name.name
  email = "a#{n+1}@a.a"
  password = "123456"
  votes = Faker::Number.between(1, 99)
  User.create!(username: name,
  email: email,
  password: password,
  vote_count: votes)
end

5.times do |n|
  class_name = "lop #{n+1}"
  Category.create!(
  name: class_name
  )
end

(1..5).each do |n|
  object_name = ["Toan", "Ly", "Hoa", "Van", "Anh"]
  5.times do |m|
    Category.create!(
    name: object_name[m],
    parent_id: n
  )
  end
end

99.times do |n|
  title = Faker::Lorem.sentences(1)
  content = Faker::Lorem.sentences(5)
  user = Faker::Number.between(1, 99)
  votes = Faker::Number.between(1, 99)
  category_id = Faker::Number.between(6, 25)
  Question.create!(
  title: title,
  content: content,
  category_id: category_id,
  user_id: user,
  vote_count: votes
  )
end

10.times do
  question = Question.find_by id: 1
  content = Faker::Lorem.sentence(5)
  vote_count = Faker::Number.between(0,10)
  user_id = Faker::Number.between(1,10)
  question.answers.create(content: content,
    vote_count: vote_count, user_id: user_id)
end
