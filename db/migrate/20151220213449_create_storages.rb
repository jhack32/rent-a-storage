class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.string :title, null: false
      t.integer :price, null: false
      t.string :description
      t.string :location, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
