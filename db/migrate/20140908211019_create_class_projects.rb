class CreateClassProjects < ActiveRecord::Migration
  def change
    create_table :class_projects do |t|
      t.string :name
      t.string :primary_language
      t.text :description
      t.text :github
      t.text :other_url

      t.timestamps
    end
  end
end
