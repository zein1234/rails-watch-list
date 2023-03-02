# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# require 'json'
# require 'open-uri'
# require 'faker'


puts 'cleaning .....'


Bookmark.destroy_all
Movie.destroy_all
List.destroy_all


# puts 'seeeding......'
# url = 'http://tmdb.lewagon.com/movie/top_rated'
# movies_serialized = URI.open(url).read
#   movies = JSON.parse(movies_serialized)
# movies['results'].each do |movie|
#   title = movie['original_title']
#   overview = movie['overview']
#   poster_url = movie['backdrop_path']
#   rating = movie['vote_average'].to_i
#   Movie.create!(title: title, overview: overview, poster_url: poster_url, rating: rating)
#   puts 'created 1 movie ....'
# end

# puts 'seeding done'

# 10.times do
#   l = List.new(name:Faker::Cannabis.strain)
#   l.save
#   puts 'Created one bookmark'
# end

# 100.times do
#   b = Bookmark.new(comment: 'Random', movie: Movie.all.sample, list: List.all.sample)
#   b.save
#   puts 'Created one bookmark'
# end
puts "seeds db"
Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7)
