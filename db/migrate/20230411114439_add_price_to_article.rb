class AddPriceToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :price, :string
  end
end
