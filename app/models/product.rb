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

class Product < ActiveRecord::Base

  has_many :favourites
  has_many :reviews
  has_many :line_items, dependent: :destroy
  has_and_belongs_to_many :categories
  
end
