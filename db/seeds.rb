# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create!(username: "ddtran", email: "dd@gmail.com", password: "123456",
  is_admin: true)
10.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "123456"
  User.create!(username: name, email: email, password: password)
end

Category.create(name: "development")

10.times do
  title = Faker::Lorem.sentence(1)
  content = Faker::Lorem.sentence(5)
  vote_count = Faker::Number.between(0,10)
  user.questions.create(title: title, content: content,
    vote_count: vote_count, category_id: 1)
end

10.times do
  question = Question.find_by id: 1
  content = Faker::Lorem.sentence(5)
  vote_count = Faker::Number.between(0,10)
  user_id = Faker::Number.between(1,10)
  question.answers.create(content: content,
    vote_count: vote_count, user_id: user_id)
end
