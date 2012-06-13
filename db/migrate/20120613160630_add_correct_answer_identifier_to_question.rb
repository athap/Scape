class AddCorrectAnswerIdentifierToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :correct_answer_identifier, :string

  end
end
