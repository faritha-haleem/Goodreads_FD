require 'csv'
namespace :import do
  desc "Importing Authors CSV file into our database using rails"
  task :authors => :environment do
    CSV.foreach('authors.csv') do |row|
    auth_id,name=row
      Author.create(auth_id:auth_id,name:name)
    end
    puts "Coming here buddy..no worries"
    end
end
#namespace :import do
  #desc "Importing Books CSV file into our database using rails"
  #task:books => :environment do
  #  CSV.foreach('books.csv') do |row|

    #end
#end
#end