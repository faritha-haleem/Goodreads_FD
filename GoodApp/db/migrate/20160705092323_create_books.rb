class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.belongs_to :publisher, index:true, null: false
      t.string :isbn, unique: true, null: false
      t.date :pub_year
      t.timestamps
    end
  end
end
