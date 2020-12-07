# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  {username: 'userNumberOne'},
  {username: 'userNumberTwo'},
  {username: 'userNumberThree'},
  {username: 'userNumberFour'},
  {username: 'userNumberFive'},
  {username: 'userNumberSix'},
  {username: 'userNumberSeven'},
  {username: 'userNumberEight'},
  {username: 'userNumberNine'},
  {username: 'userNumberTen'}
])

games = Game.create([
  {user_id: 1, score: 50 },
  {user_id: 2, score: 150 },
  {user_id: 3, score: 250 },
  {user_id: 4, score: 530 },
  {user_id: 5, score: 980 },
  {user_id: 6, score: 1050 },
  {user_id: 7, score: 250 },
  {user_id: 8, score: 780 },
  {user_id: 9, score: 430 },
  {user_id: 10, score: 25 }
])
