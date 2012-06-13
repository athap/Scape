class RemoveCorrectAnswerIndexFromQuestion < ActiveRecord::Migration
  def up
    remove_column :questions, :correct_answer_index
      end

  def down
    add_column :questions, :correct_answer_index, :integer
  end
end
