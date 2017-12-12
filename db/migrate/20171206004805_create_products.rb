class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :SKU
      t.float :price
      t.text :description
      t.integer :quantity
      t.string :size
      t.string :manufacturer

      t.timestamps
    end
  end
end
