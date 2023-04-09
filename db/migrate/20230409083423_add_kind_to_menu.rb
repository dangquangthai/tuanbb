class AddKindToMenu < ActiveRecord::Migration[7.0]
  def change
    add_column :menus, :kind, :string
  end
end
