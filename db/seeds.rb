# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Welcome to the movie club :"

u1 = User.create name: "Luke H", email: "textchimp@gmail.com", password: "password"
u2 = User.create name: "Luke H", email: "textchimp@gmail.com", password: "password"
u3 = User.create name: "Luke H", email: "textchimp@gmail.com", password: "password"

m1 = Movie.create name: "Top Gun", genre: "Flying", plot: "America invades", user: u1, image: "http://fillmurray.com/"
m2 = Movie.create name: "", genre: "Flying", plot: "America invades", user: u2, image: "http://fillmurray.com/"
m3 = Movie.create name: "", genre: "Flying", plot: "America invades", user: u3, image: "http://fillmurray.com/"
m4 = Movie.create name: "", genre: "Flying", plot: "America invades", user: u1, image: "http://fillmurray.com/"

f1 = Forum.create name: "Love the flying", movie: m1, user: u1
f2 = Forum.create name: "Love the flying", movie: m1, user: u1
f3 = Forum.create name: "Love the flying", movie: m1, user: u1

p1 = Post.create message: "So fast!", u: u1, forum: f1
p2 = Post.create message: "So fast!", u: u1, forum: f1
p3 = Post.create message: "So fast!", u: u1, forum: f1




puts "Seeding done!"
