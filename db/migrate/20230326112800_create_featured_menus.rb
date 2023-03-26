class CreateFeaturedMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :featured_menus do |t|
      t.references :featureable, polymorphic: true, index: true, null: false
      t.integer :position
      t.timestamps
    end
  end
end
