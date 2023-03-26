class AddSlugToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :slug, :string
    add_column :articles, :published, :boolean

    remove_column :articles, :position, :integer
    add_column :articles, :position, :integer
  end
end
