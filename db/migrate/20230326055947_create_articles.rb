class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :standfirst
      t.datetime :published_at
      t.string :position
      t.timestamps
    end
  end
end
