class CreateProductVitamins < ActiveRecord::Migration[5.2]
  def change
    create_table :product_vitamins do |t|
      t.integer :vitamin_id
      t.integer :product_id

      t.timestamps
    end
  end
end
