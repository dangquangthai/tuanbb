class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.belongs_to :article
      t.integer :position, default: 0
      t.timestamps
    end
  end
end
