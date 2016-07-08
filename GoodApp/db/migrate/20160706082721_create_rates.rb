class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.belongs_to :user
      t.belongs_to :book
      t.integer :rate

      t.timestamps
    end
  end
end
