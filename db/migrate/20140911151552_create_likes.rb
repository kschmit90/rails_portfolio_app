class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.boolean "liked"
      t.string "ip_address"
      t.integer "article_id"
      t.timestamps
    end
  end
end
