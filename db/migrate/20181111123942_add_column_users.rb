class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :inappropriate_count, :integer, null: false, default: 0
    add_column :users, :status, :integer, null: false, default: 0
  end
end
