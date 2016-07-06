class CreatePublishers < ActiveRecord::Migration[5.0]
  def change
    create_table :publishers do |t|
      t.string :pub_name
      t.integer :pub_year
      t.text :pub_address

      t.timestamps
    end
  end
end
