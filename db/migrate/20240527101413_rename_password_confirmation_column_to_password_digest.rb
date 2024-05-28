class RenamePasswordConfirmationColumnToPasswordDigest < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :password_cnfirmation, :password_digest
  end
end
