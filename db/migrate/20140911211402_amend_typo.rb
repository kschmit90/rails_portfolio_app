class AmendTypo < ActiveRecord::Migration
  def up
    add_column :users, :password_digest, :string
  end

  def down
    remove_column :users, :password_diest
  end
end
