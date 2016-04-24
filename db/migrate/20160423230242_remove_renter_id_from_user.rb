class RemoveRenterIdFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :renter_id, :integer
  end
end
