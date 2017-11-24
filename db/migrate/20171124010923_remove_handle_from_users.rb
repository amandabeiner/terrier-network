class RemoveHandleFromUsers < ActiveRecord::Migration[5.1]
  def up
    remove_column :users, :handle
  end

  def down
    add_column :users, :handle, :string
  end
end
