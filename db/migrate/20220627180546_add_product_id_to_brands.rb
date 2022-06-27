class AddProductIdToBrands < ActiveRecord::Migration[7.0]
  def change
    add_column :brands, :products_id, :integer
  end
end
