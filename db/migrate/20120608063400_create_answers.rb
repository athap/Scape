class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :description
      t.integer :score
      t.string :feedback
      t.integer :index

      t.timestamps
    end
  end
end
