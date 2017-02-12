# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  cost       :integer
#  size       :string
#  color      :string
#  gender     :string
#  brand      :text
#  info       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :text
#  images     :text             default("{}"), is an Array
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
