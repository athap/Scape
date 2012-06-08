class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :level
      t.integer :selected_answer_index

      t.timestamps
    end
  end
end
