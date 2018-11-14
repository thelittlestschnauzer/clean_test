class CreateChores < ActiveRecord::Migration[5.2]
  def change
    create_table :chores do |t|
      t.string :task
      t.string :description
      t.integer :list_id	
      t.timestamps
    end
  end
end
