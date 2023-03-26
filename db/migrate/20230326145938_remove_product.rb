class RemoveProduct < ActiveRecord::Migration[7.0]
  def change
    drop_table :mentioned_products
    drop_table :products
    drop_table :featured_articles
    drop_table :featured_menus
  end
end
