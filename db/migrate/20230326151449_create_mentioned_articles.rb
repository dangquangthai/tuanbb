class CreateMentionedArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :mentioned_articles do |t|
      t.belongs_to :other_article
      t.belongs_to :article
      t.timestamps
    end
  end
end
