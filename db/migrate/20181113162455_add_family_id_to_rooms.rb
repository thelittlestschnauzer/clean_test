class AddFamilyIdToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :family_id, :integer
  end
end
