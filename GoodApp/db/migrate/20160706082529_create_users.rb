class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :username, null: false
      t.string :email, null: false
      t.string :password
      t.timestamps
    end
    add_index :users, :username, :unique => true
    add_index :users, :email, :unique => true
  end
end
