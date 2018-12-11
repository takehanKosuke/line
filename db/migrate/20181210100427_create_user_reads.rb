class CreateUserReads < ActiveRecord::Migration[5.2]
  def change
    create_table :user_reads do |t|
      t.integer :room_id, null: false
      t.integer :user_id, null: false
      t.integer :message_id, null: false
    end

    remove_column :messages, :is_read, :boolean
  end
end
