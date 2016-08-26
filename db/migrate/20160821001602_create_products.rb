class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :in_stock_counter
      t.integer :sold_counter 

      t.timestamps
    end
  end
end
