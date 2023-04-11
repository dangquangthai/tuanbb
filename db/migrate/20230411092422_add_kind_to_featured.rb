class AddKindToFeatured < ActiveRecord::Migration[7.0]
  def change
    add_column :featureds, :kind, :string
  end
end
