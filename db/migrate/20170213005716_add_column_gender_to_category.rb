class AddColumnGenderToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :gender, :string
  end
end
