class AddIsGroupToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :is_group, :boolean, null: false, defoult: false
  end
end
