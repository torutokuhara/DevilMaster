class AddAdminToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :admin, :boolean, default: false
  end
end
