class CreateBrandproducts < ActiveRecord::Migration[7.0]
  def change
    create_table :brandproducts do |t|
      t.string :name

      t.timestamps
    end
  end
end
