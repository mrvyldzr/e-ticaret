class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :title
      t.timestamps
    end

    create_table :products do |t|
      t.belongs_to :brand , index: true , foreign_key: true
      t.datetime :published_at
      t.timestamps
    end
  end
end
