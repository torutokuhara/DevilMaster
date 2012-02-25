class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :tribe
      t.integer :level

      t.timestamps
    end
  end
end
