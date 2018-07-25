class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :attention
      t.string :detail

      t.timestamps
    end
  end
end
