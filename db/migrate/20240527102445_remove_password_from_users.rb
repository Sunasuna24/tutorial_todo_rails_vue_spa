class RemovePasswordFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :password, :text
  end
end
