class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :users, index:true
      t.belongs_to :books, index:true
      t.text :review_msg

      t.timestamps
    end
  end
end