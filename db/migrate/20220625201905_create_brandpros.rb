class CreateBrandpros < ActiveRecord::Migration[7.0]
  def change
    create_table :brandpros do |t|
      t.integer :brand_id
      t.integer :product_id

      t.timestamps
    end
  end
end
