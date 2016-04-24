class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.integer :owner_id
      t.integer :renter_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
