class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :cost
      t.string :size
      t.string :color
      t.string :gender
      t.text :brand
      t.text :info

      t.timestamps null: false
    end
  end
end
