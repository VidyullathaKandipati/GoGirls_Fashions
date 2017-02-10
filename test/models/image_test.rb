# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  product_id :integer
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
