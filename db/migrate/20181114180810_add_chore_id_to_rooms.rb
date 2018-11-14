class AddChoreIdToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :chore_id, :integer
  end
end
