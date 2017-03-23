# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Welcome to the movie club :"

u1 = User.create name: "Luke H", email: "textchimp@gmail.com", password: "password"
u2 = User.create name: "Mary J", email: "mary@yahoo.com", password: "pass123"
u3 = User.create name: "John S", email: "john@gmail.com", password: "passABC"
u4 = User.create name: "Jin L", email: "jin@gmail.com", password: "pass123"
u5 = User.create name: "Xander G", email: "xander@gmail.com", password: "pass123"
u6 = User.create name: "Christ L", email: "christ@gmail.com", password: "pass123"
u7 = User.create name: "Chloe L", email: "chloe@gmail.com", password: "pass123"
u8 = User.create name: "Ellie L", email: "ellie@gmail.com", password: "pass123"

movie_file = File.open("./db/movies.csv", "r")
movie_file.each do |line|
  fields = line.split(",")
  name = fields[0]
  genre = fields[2]
  plot = fields[3]
  image = fields[4]

  #randomly select a user
  user = User.offset(rand(User.count)).first

  Movie.create(name: name, genre: genre, plot: plot, absolute_image: image, user: user)
end

f1 = Forum.create name: "Love the flying", movie: Movie.offset(0).first, user: u1
f2 = Forum.create name: "Good action scenes", movie: Movie.offset(1).first, user: u2
f3 = Forum.create name: "Just keep swimming", movie: Movie.offset(2).first, user: u3
f4 = Forum.create name: "We're going to be in the Hudson", movie: Movie.offset(3).first, user: u1

p1 = Post.create message: "So fast!", user: u1, forum: f1
p2 = Post.create message: "Good work", user: u1, forum: f2
p3 = Post.create message: "Good work", user: u1, forum: f3
p4 = Post.create message: "Hank is awesome", user: u1, forum: f4


puts "Seeding done!"
