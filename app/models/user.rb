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
#

class User < ActiveRecord::Base
  has_many :favourites
  has_many :reviews
  has_secure_password

  validates :email, :presence => true, :uniqueness => true
  validates_confirmation_of :password
end
