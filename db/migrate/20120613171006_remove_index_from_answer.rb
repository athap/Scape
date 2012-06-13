class RemoveIndexFromAnswer < ActiveRecord::Migration
  def up
    remove_column :answers, :index
      end

  def down
    add_column :answers, :index, :integer
  end
end
