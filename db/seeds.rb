# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Welcome to the movie club :"

u1 = User.create name: "Luke H", email: "textchimp@gmail.com", password: "password"
u2 = User.create name: "Mary J", email: "maryj@yahoo.com", password: "pass123"
u3 = User.create name: "John S", email: "johns@gmail.com", password: "passABC"

m1 = Movie.create name: "Top Gun", genre: "Flying", plot: "America invades", user: u1, image: "http://mozistar.hu/filmcover/625/cover/mv5bmty3odg4otu3nl5bml5banbnxkftztywmji1nzg4-v1-sy317-cr3-0-214-317.jpg"
m2 = Movie.create name: "Troy", genre: "Action", plot: "War heroes", user: u2, image: "http://fillmurray.com/"
m3 = Movie.create name: "Finding Nemo", genre: "Comedy", plot: "Lost fish", user: u3, image: "http://cdn.akamai.steamstatic.com/steam/apps/331450/header.jpg?t=1488435477"
m4 = Movie.create name: "Sully", genre: "Drama", plot: "Plane crashed", user: u1, image: "http://fillmurray.com/"

f1 = Forum.create name: "Love the flying", movie: m1, user: u1
f2 = Forum.create name: "Good action scenes", movie: m2, user: u2
f3 = Forum.create name: "Just keep swimming", movie: m3, user: u3
f4 = Forum.create name: "We're going to be in the Hudson", movie: m4, user: u1

p1 = Post.create message: "So fast!", user: u1, forum: f1
p2 = Post.create message: "Good work", user: u1, forum: f2
p3 = Post.create message: "Good work", user: u1, forum: f3
p4 = Post.create message: "Hank is awesome", user: u1, forum: f4


puts "Seeding done!"
