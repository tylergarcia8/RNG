class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :bio
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
