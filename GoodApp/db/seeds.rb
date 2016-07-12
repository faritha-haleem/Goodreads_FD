# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

def populate_authors_table
  CSV.foreach('authors.csv') do |row|
    auth_id,name=row
    Author.find_or_create_by(name:name)
  end
  puts "Seeding authors through seeds is done"
end

def populate_genres_table
  CSV.foreach('genres.csv') do |row|
    genre_id,genre_name=row
    Genre.find_or_create_by(genre_name:genre_name)
  end
  puts "Seeding genres is done"
end

def populate_publishers_table
  CSV.foreach('publishers.csv') do |row|
    pub_name,pub_year,pub_address=row
    Publisher.find_or_create_by(pub_name:pub_name,pub_address:pub_address)
  end
  puts "Seeding publishers is done"
end

def populate_books_table
  CSV.foreach('books.csv') do |row|
    title,publishers_id,isbn=row
    Book.find_or_create_by(title:title,publisher_id:publishers_id,isbn:isbn)
  end
  puts "Seeding Books is done"
end

def populate_book_authors_table
  CSV.foreach('book_authors.csv') do |row|
    authors_id,books_id=row
    BookAuthor.find_or_create_by(author_id:authors_id,book_id:books_id)
  end
  puts "Seeding book_author is done"
end

def populate_book_genres_table
  CSV.foreach('book_genres.csv') do |row|
    books_id,genres_id=row
    BookGenre.find_or_create_by(book_id:books_id,genre_id:genres_id)
  end
  puts "Seeding book_genres through seeds is done"
end

populate_authors_table
populate_book_authors_table
populate_book_genres_table
populate_books_table
populate_genres_table
populate_publishers_table