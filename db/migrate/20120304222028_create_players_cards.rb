class CreatePlayersCards < ActiveRecord::Migration
  def change
    create_table :players_cards do |t|
      t.timestamps
    end
  end
end
