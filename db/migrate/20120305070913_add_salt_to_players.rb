class AddSaltToPlayers < ActiveRecord::Migration
  def change 
    add_column :players, :salt, :string
  end
end
