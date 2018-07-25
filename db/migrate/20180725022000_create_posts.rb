class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.string :image
      t.string :content
      t.string :product_quantity
      t.integer :cost
      t.integer :comment_number
      t.integer :like_number
      t.string :video

      t.timestamps
    end
  end
end
