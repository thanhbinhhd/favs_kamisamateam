class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.integer :post_id
      t.integer :activity_type, null: false

      t.timestamps
    end
  end
end
