class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.text :category
      t.text :image
      t.float :price
      t.integer :quality

      t.timestamps
    end
  end
end
