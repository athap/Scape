class AddIdentifierToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :identifier, :string

  end
end
