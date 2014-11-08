class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.integer :from_user_id, null: false
      t.integer :to_user_id, null: false
      t.text :chat

      t.timestamps
    end
  end
end
