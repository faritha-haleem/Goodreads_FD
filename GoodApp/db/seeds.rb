# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
CSV.foreach('authors.csv') do |row|
  auth_id,name=row
      Author.create(name:name)
  end
puts "Seeding authors through seeds is done"
CSV.foreach('genres.csv') do |row|
  genre_id,genre_name=row
  Genre.create(genre_name:genre_name)
end
puts "Seeding genres is done"
CSV.foreach('publishers.csv') do |row|
  pub_name,pub_year,pub_address=row
  Publisher.create(pub_name:pub_name,pub_address:pub_address)
end
CSV.foreach('books.csv') do |row|
  title,publishers_id,isbn=row
  Book.create(title:title,publisher_id:publishers_id,isbn:isbn)
end
puts "Seeding Books is done"
puts "Seeding publishers is done"
CSV.foreach('book_authors.csv') do |row|
  authors_id,books_id=row
  BookAuthor.create(author_id:authors_id,book_id:books_id)
end
puts "Seeding book_author is done"
CSV.foreach('book_genres.csv') do |row|
  books_id,genres_id=row
  BookGenre.create(book_id:books_id,genre_id:genres_id)
end
puts "Seeding book_genres through seeds is done"