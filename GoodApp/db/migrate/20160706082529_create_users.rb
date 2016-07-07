class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :fname
      t.string :lname
      t.string :username
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end