class AddListIdToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :list_id, :integer
  end
end
