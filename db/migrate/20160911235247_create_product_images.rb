class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.string :url_square_600
      t.string :url_square_1200
      t.integer :ordinal, default: 1, null: false

      t.timestamps
    end

    add_reference :product_images, :product, index: true
    add_foreign_key :product_images, :products
  end
end
