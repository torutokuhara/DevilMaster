class RenamePlayersCardsToPlayerCards < ActiveRecord::Migration
  def change
    rename_table :players_cards, :player_cards
  end
end
