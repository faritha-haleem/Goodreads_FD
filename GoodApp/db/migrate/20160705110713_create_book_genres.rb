class CreateBookGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :book_genres do |t|
      t.belongs_to :books, index:true
      t.belongs_to :genres, index:true

      t.timestamps
    end
  end
end
