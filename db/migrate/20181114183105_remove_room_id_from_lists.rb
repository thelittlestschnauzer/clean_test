class RemoveRoomIdFromLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :room_id, :integer
  end
end
