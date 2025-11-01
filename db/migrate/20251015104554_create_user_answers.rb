class CreateUserAnswers < ActiveRecord::Migration[7.2]
  def change
    create_table :user_answers do |t|
      t.integer :q1_id
      t.integer :q2_id
      t.integer :q3_id
      t.integer :q4_id
      t.integer :q5_id
      t.integer :q6_id
      t.integer :q7_id
      t.integer :q8_id
      t.integer :q9_id
      t.integer :q10_id

      t.integer :q1_yourans
      t.integer :q2_yourans
      t.integer :q3_yourans
      t.integer :q4_yourans
      t.integer :q5_yourans
      t.integer :q6_yourans
      t.integer :q7_yourans
      t.integer :q8_yourans
      t.integer :q9_yourans
      t.integer :q10_yourans

      t.boolean :q1_isCorrect
      t.boolean :q2_isCorrect
      t.boolean :q3_isCorrect
      t.boolean :q4_isCorrect
      t.boolean :q5_isCorrect
      t.boolean :q6_isCorrect
      t.boolean :q7_isCorrect
      t.boolean :q8_isCorrect
      t.boolean :q9_isCorrect
      t.boolean :q10_isCorrect
      t.timestamps
    end
  end
end
