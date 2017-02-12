class AddColumnImagesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :images, :text, :array => true, :default => []
  end
end
