class CreateProducts < ActiveRecord::Migration[7.1]
     def change
      create_table :brands do |t|
        t.string :title
        t.timestamps
      end

      create_table :products do |t|
        t.belongs_to :brand, foreign_key: true
       
        t.timestamps
      end
    end  
  end
end