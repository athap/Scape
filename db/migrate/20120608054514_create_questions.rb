class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :identifier
      t.string :description
      t.int :correct_answer_index

      t.timestamps
    end
  end
end
