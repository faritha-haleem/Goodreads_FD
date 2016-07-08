class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :user, index:true
      t.belongs_to :book, index:true
      t.text :review_msg
      t.timestamps
    end
  end
end