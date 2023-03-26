class AddMenuToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :show_on_menu, :boolean, default: false
  end
end
