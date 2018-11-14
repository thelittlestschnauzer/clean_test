class AddRoomIdToChores < ActiveRecord::Migration[5.2]
  def change
    add_column :chores, :room_id, :integer
  end
end
