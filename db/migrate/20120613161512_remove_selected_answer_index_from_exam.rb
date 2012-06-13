class RemoveSelectedAnswerIndexFromExam < ActiveRecord::Migration
  def up
    remove_column :exams, :selected_answer_index
      end

  def down
    add_column :exams, :selected_answer_index, :integer
  end
end
