class RemoveSaltFromPlayers < ActiveRecord::Migration
  def up
    remove_column :players, :salt
  end

  def down
    add_column :players, :salt
  end
end
