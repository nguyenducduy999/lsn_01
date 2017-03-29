class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.integer :answer_id
      t.integer :question_id
      t.integer :user_id
      t.boolean :seen, default: false

      t.timestamps
    end
    add_index :notifications, :answer_id
    add_index :notifications, :question_id
    add_index :notifications, :user_id
  end
end
