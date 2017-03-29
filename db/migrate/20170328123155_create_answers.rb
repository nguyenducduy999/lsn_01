class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.text :content
      t.string :picture
      t.integer :user_id
      t.integer :parent_id
      t.integer :vote_count

      t.timestamps
    end
    add_index :answers, :question_id
    add_index :answers, :user_id
  end
end
