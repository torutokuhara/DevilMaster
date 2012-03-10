class AddIndexesToPlayersCards < ActiveRecord::Migration
  def change
    add_column :players_cards, :player_id, :integer
    add_column :players_cards, :card_id, :integer
  end
end
