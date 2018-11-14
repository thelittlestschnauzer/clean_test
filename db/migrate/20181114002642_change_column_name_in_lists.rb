class ChangeColumnNameInLists < ActiveRecord::Migration[5.2]
  def change
  	rename_column :lists, :room, :room_id
  end
end
