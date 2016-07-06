class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Username
      t.string :Email
      t.string :Token

      t.timestamps
    end
    add_index :users, :Username, unique: true
    add_index :users, :Email, unique: true
  end
end
