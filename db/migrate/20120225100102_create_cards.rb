class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :strength
      t.string :image

      t.timestamps
    end
  end
end
