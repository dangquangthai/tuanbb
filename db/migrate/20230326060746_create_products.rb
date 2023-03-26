class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :standfirst
      t.string :slug
      t.integer :position
      t.datetime :published_at
      t.boolean :published
      t.timestamps
    end
  end
end
