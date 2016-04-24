class AddRenterIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :renter_id, :integer
  end
end
