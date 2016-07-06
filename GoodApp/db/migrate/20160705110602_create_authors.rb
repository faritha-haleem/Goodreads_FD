class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.integer :auth_id
      t.string :name
      t.timestamps
    end
  end
end
