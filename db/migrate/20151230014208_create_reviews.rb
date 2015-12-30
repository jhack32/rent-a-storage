class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :reviewer_id, null: false
      t.string :message, null: false
      t.integer :rating, null: false

      t.timestamps null: false
    end
  end
end
