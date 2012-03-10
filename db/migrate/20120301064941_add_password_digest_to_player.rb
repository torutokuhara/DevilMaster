class AddPasswordDigestToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :password_digest, :string
  end
end
