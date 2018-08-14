class CreateProductPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :product_posts do |t|
      t.integer :product_id
      t.integer :post_id

      t.timestamps
    end
  end
end
