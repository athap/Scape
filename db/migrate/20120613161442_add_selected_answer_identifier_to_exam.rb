class AddSelectedAnswerIdentifierToExam < ActiveRecord::Migration
  def change
    add_column :exams, :selected_answer_identifier, :string

  end
end
