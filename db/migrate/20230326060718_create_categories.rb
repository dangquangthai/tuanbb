class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :slug
      t.string :position
      t.datetime :published_at
      t.boolean :published
      t.timestamps
    end
  end
end
