class Init < ActiveRecord::Migration[5.2]
  def change
    create_table :user_rooms do |t|
      t.integer :user_id, null: false
      t.integer :room_id, null: false

      t.timestamps
    end

    create_table :rooms do |t|
      t.datetime :last_message_at, null: false

      t.timestamps
    end

    create_table :messages do |t|
      t.string :message, null: false
      t.boolean :is_read, null: false, default: false
      t.integer :room_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
