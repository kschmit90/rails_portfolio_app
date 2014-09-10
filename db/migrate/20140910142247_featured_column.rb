class FeaturedColumn < ActiveRecord::Migration
  def up
    add_column :class_projects, :featured, :boolean, default: false
  end

  def down
  end
end
