class CreateBookAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :book_authors do |t|
      t.belongs_to :authors, index:true
      t.belongs_to :books, index:true
      t.timestamps
    end
  end
end
