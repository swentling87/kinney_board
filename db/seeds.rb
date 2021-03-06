# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Create Users
5.times do
  User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
end
users = User.all
# Create Posts
50.times do
  post = Post.create!(
    user: users.sample,
    title: Faker::Hipster.sentence,
    body: Faker::Hipster.paragraph
  )
  post.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
end
posts = Post.all
