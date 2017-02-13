class ChangeQuantityDefaultInOrder < ActiveRecord::Migration
  def change
    change_column :line_items, :quantity, :integer, :default => 1

  end
end
