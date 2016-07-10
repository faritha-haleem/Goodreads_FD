class CreatePublishers < ActiveRecord::Migration[5.0]
  def change
    create_table :publishers do |t|
      t.string :pub_name, null: false
      t.date :pub_year
      t.text :pub_address, null: false
      t.timestamps
    end
  end
end
