class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.int :user_id
      t.int :question_id
      t.int :level
      t.int :selected_answer_index

      t.timestamps
    end
  end
end
