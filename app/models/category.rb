# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gender     :string
#

class Category < ActiveRecord::Base
  has_and_belongs_to_many :products

  def name_of_cat
  "#{name}"
  end
end
