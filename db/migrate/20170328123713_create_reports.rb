class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :question_id
      t.text :content

      t.timestamps
    end
    add_index :reports, :user_id
    add_index :reports, :question_id
    add_index :reports, [:user_id, :question_id], unique: true
  end
end
