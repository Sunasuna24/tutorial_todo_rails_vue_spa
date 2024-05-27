class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password
      t.text :password_cnfirmation

      t.timestamps
    end
  end
end
