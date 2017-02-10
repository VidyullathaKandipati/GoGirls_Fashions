class CreateCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :categories_products, :id => false do |t|
      t.integer :category_id
      t.integer :product_id
    end
  end
end
