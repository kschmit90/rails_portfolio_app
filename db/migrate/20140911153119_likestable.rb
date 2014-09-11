class Likestable < ActiveRecord::Migration
  def up
    add_column :likes, :liked, :boolean, default: false
    add_column :likes, :ip_address, :string
    add_column :likes, :article_id, :integer
  end

  def down
  end
end
