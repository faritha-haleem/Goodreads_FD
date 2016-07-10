class CreateBookAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :book_authors do |t|
      t.belongs_to :book, index:true
      t.belongs_to :author, index:true
      t.timestamps
    end
    execute "ALTER TABLE book_authors ADD UNIQUE (book_id,author_id);"
  end
end
