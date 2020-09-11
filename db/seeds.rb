user_list = [
    { email: "test@example.com", password: "password" },
    { email: "hoge@example.com", password: "password" },
    { email: "fuga@example.com", password: "password" }
]

movie_list = [
{ user_id: 1, title: "おはよう", url:"https://www.youtube.com/watch?v=haoU1TIyPEA") },
{ user_id: 2, title: "こんにちは", url:"https://www.youtube.com/watch?v=8G5j6vr1LqA" },
{ user_id: 1, title: "こんばんは", url:"https://www.youtube.com/watch?v=WsW9lNvZN5M" },
{ user_id: 1, title: "おやすみ", url:"https://www.youtube.com/watch?v=3lNnRc0NppU" }
]

watched_movie_list = [
{ user_id: 2, movie_id: 1 },
{ user_id: 3, movie_id: 1 },
{ user_id: 1, movie_id: 2 },
{ user_id: 3, movie_id: 2 },
{ user_id: 3, movie_id: 3 },
{ user_id: 2, movie_id: 4 }
]

User.create!(user_list)
Movie.create!(movie_list)
Watched_movie.create!(like_list)
puts '初期データの投入に成功しました!'


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
