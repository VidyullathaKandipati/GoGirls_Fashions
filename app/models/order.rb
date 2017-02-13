# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ActiveRecord::Base
  belongs_to :user
  has_many :line_items, dependent: :destroy

  def total_cost
    line_items.to_a.sum {|item| item.total_cost}
  end
end
