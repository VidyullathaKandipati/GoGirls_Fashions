class AddDefaultToQuantityInLineItem < ActiveRecord::Migration
  def change
    change_column :line_items, :quantity, :integer, :default => 0
  end
end
