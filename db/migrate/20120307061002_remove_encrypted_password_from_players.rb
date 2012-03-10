class RemoveEncryptedPasswordFromPlayers < ActiveRecord::Migration
  def up
    remove_column :players, :encrypted_password
  end

  def down
    add_column :players, :encrypted_password
  end
end
