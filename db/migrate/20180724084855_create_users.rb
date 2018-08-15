class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :avatar
      t.string :address
      t.string :string
      t.string :phone
      t.string :role, default: "User"
      t.string :sex, default: "Male"
      t.integer :new_notification, default: 0
      t.string :avatar_cloud, default: nil
      t.string :provider, default: nil

      t.timestamps
    end
  end
end
