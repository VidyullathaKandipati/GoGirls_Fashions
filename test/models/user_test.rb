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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
