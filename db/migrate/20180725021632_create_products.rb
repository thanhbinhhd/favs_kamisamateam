class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.integer :category_id
      t.string :cultivation_level
      t.string :cultivation_method
      t.string :nutrition_attention
      t.string :nutrition_detail
      t.string :preservation_detail
      t.string :preservation_short

      t.timestamps
    end
  end
end
