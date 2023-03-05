# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'json'
require 'open-uri'
# require 'faker'
puts 'cleaning .....'
Movie.destroy_all
puts "Database cleaned"

url = "http://tmdb.lewagon.com/movie/top_rated"
10.times do |i|
  puts "Importing movies from page #{i + 1}"
  movies = JSON.parse(URI.open("#{url}?page=#{i + 1}").read)['results']
  movies.each do |movie|
    puts "Creating #{movie['title']}"
    base_poster_url = "https://image.tmdb.org/t/p/original"
    Movie.create(
      title: movie['title'],
      overview: movie['overview'],
      poster_url: "#{base_poster_url}#{movie['backdrop_path']}",
      rating: movie['vote_average']
    )
  end
end
puts "Movies created"

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
