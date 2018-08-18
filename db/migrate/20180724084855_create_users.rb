class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :avatar
      t.string :address
      t.string :phone
      t.datetime :birthday, default: DateTime.now
      t.string :role, default: "User"
      t.integer :sex, default: 0
      t.integer :new_notification, default: 0
      t.string :avatar_cloud, default: nil
      t.string :provider, default: nil

      t.timestamps
    end
  end
end
