class AddStateToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :state, :string

  end
end
