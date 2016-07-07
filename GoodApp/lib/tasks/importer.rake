require 'csv'
namespace :import do
  desc "Importing Authors CSV file into our database using rails"
  task :authors => :environment do
    CSV.foreach('authors.csv') do |row|
    auth_id,name=row
      Author.create(auth_id:auth_id,name:name)
    end
    puts "Seeding authors is done"
    end
end
namespace :import do
  desc "Importing Books CSV file into our database using rails"
  task :books => :environment do
    CSV.foreach('books.csv') do |row|
      title,publishers_id,isbn=row
      Book.create(title:title,publishers_id:publishers_id,isbn:isbn)
    end
  puts "Seeding Books is done"
  end
end
namespace :import do
  desc "Importing Genres CSV file into our database using rails"
  task :genres => :environment do
    CSV.foreach('genres.csv') do |row|
      genre_id,genre_name=row
      Genre.create(genre_id:genre_id,genre_name:genre_name)
    end
    puts "Seeding genres is done"
  end
end
namespace :import do
  desc "Importing Publishers CSV file into our database using rails"
  task :publishers => :environment do
    CSV.foreach('publishers.csv') do |row|
      pub_name,pub_year,pub_address=row
      Publisher.create(pub_name:pub_name,pub_year:pub_year,pub_address:pub_address)
    end
    puts "Seeding publishers is done"
  end
end