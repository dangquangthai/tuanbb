class CreateMentionedProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :mentioned_products do |t|
      t.belongs_to :product
      t.belongs_to :article
      t.timestamps
    end
  end
end
