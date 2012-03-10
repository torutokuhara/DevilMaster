class AddPasswordToPlayers < ActiveRecord::Migration
  def change 
    add_column :players, :encrypted_password, :string
  end
end
