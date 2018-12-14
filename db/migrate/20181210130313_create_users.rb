class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :address
      t.text :numberphone
      t.text :email
      t.text :password
      t.text :password_confirmation

      t.timestamps
    end
  end
end
