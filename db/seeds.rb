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

m1 = Movie.create name: "Top Gun", genre: "Flying", plot: "America invades", user: u1, image: "http://img.moviepostershop.com/top-gun-movie-poster-1986-1010468873.jpg"
m2 = Movie.create name: "Lost in translation", genre: "Drama", plot: "A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.", user: u2, image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI2NDI5ODk4N15BMl5BanBnXkFtZTYwMTI3NTE3._V1_UX182_CR0,0,182,268_AL_.jpg"
m3 = Movie.create name: "Finding Nemo", genre: "Comedy", plot: "After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.", user: u3, image: "http://cdn.akamai.steamstatic.com/steam/apps/331450/header.jpg?t=1488435477"
m4 = Movie.create name: "Sully", genre: "Drama", plot: "The story of Chesley Sullenberger, an American pilot who became a hero.", user: u1, image: "https://resizing.flixster.com/laFTpNAsXtdHYtj_ueHCnODx6QY=/206x305/v1.bTsxMjA5MzQ4NTtqOzE3Mjg0OzEyMDA7Mjc2NDs0MDk2"
m5 = Movie.create name: "Up in the air", genre: "Drama", plot: "Ryan Bingham enjoys living out of a suitcase for his job travelling around the country firing people, but finds that lifestyle threatened by the presence of a potential love interest and a new hire", user: u4, image: "http://moviescounter.com/wp-content/uploads/2016/07/Up-in-the-Air-2009-213x300.jpg"
m6 = Movie.create name: "Spirited away", genre: "fantasy", plot: "A sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.
", user: u4, image: "https://images-na.ssl-images-amazon.com/images/I/513vjGsyYyL._AC_SL230_.jpg"
m7 = Movie.create name: "The September Issue", genre: "Documentary", plot: "A documentary chronicling Vogue editor-in-chief Anna Wintour's preparations for the 2007 fall-fashion issue.", user: u4, image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY0NzI0MjU5OV5BMl5BanBnXkFtZTcwNTM0NjU1Mg@@._V1_UX182_CR0,0,182,268_AL_.jpg"
m8 = Movie.create name: "Udon", genre: "Dramedy", plot: "The relationship between an aspiring comic and his stubborn noodlemaker father.", user: u4, image: "http://www.dramafans.org/imgs/udon.jpg"
m9 = Movie.create name: "The imitation game", genre: "Drama", plot: "During World War II, mathematician Alan Turing tries to crack the enigma code with help from fellow mathematicians", user: u4, image: "https://resizing.flixster.com/CJEtstucktJs1iGpC-y_TEjtdsM=/206x305/v1.bTsxMTE4MDg3MTtqOzE3MzY0OzEyMDA7NTAwOzc0MA"
m10 = Movie.create name: "Pacific Rim", genre: "Sci-Fi", plot: "A former pilot and a trainee are paired up to drive a seemingly obsolete special weapon in a desperate effort to save the world from the apocalypse.", user: u1, image: "https://d202m5krfqbpi5.cloudfront.net/books/1360096445l/17162161.jpg"
m11 = Movie.create name: "Julie & Julia", genre: "Drama", plot: "Julia Child's story of her start in the cooking profession is intertwined with blogger Julie Powell's 2002 challenge to cook all the recipes in Child's first book.", user: u1, image: "https://upload.wikimedia.org/wikipedia/en/0/00/Julie_and_julia.jpg"
m12 = Movie.crate name: "Ratatuille", genre: "Comedy", plot: "A rat who can cook makes an unusual alliance with a young kitchen worker at a famous restaurant." , user: u2, image: "https://upload.wikimedia.org/wikipedia/en/5/50/RatatouillePoster.jpg"
m13 = Movie.create name: "Valentino: The Last Emperor", genre: "Documentary", plot: "A look at the life of legendary fashion designer Valentino.", user: u3, image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxMzMwNjY2MV5BMl5BanBnXkFtZTcwNzYzNTU4MQ@@._V1_UX182_CR0,0,182,268_AL_.jpg"

f1 = Forum.create name: "Love the flying", movie: m1, user: u1
f2 = Forum.create name: "Good action scenes", movie: m2, user: u2
f3 = Forum.create name: "Just keep swimming", movie: m3, user: u3
f4 = Forum.create name: "We're going to be in the Hudson", movie: m4, user: u1

p1 = Post.create message: "So fast!", user: u1, forum: f1
p2 = Post.create message: "Good work", user: u1, forum: f2
p3 = Post.create message: "Good work", user: u1, forum: f3
p4 = Post.create message: "Hank is awesome", user: u1, forum: f4


puts "Seeding done!"
