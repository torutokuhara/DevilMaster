class AddEmailToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :email, :string

  end
end
