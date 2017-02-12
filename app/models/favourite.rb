# == Schema Information
#
# Table name: favourites
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Favourite < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def does_user_already_likes_product
    errors.add(:user, "You can like product only once.") if (user.already_likes?(product))
  end
end
