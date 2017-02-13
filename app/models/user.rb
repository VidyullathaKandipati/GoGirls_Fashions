# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  password_digest :text
#  admin           :boolean
#  contact         :text
#  address         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  avatar          :text
#

class User < ActiveRecord::Base
  has_many :orders
  has_many :favourites
  has_many :reviews
  has_secure_password

  validates :email, :presence => true, :uniqueness => true
  validates_confirmation_of :password

  def already_likes?(product)
    puts "======================", self.id, product.id, self.favourites.where('product_id = ?', product.id).inspect
    self.favourites.where('product_id = ?', product.id).size > 0
  end
end
