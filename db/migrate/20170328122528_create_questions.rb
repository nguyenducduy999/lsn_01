class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.string :picture
      t.integer :category_id
      t.integer :user_id
      t.integer :vote_count

      t.timestamps
    end
    add_index :questions, :category_id
    add_index :questions, :user_id
  end
end
