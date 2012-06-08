class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :description
      t.int :score
      t.string :feedback
      t.int :index

      t.timestamps
    end
  end
end
