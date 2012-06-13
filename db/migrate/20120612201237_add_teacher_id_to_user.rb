class AddTeacherIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :teacher_id, :integer

  end
end
