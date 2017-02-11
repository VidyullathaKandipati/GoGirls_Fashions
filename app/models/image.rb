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

class Image < ActiveRecord::Base
  belongs_to :product
end
