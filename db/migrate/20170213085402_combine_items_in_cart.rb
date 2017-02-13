class CombineItemsInCart < ActiveRecord::Migration
  def up
    # replace multiple items for a single product in a cart with a single item
    Order.all.each do |order|
      #count the number of each product in the cart
      sums = order.line_items.group(:product_id).sum(:quantity)

      sums.each do |product_id, quantity|
        if quantity > 1
          #remove individual items
          order.line_items.where(product_id: product_id).delete_all

          #replace with a single item
          item = order.line_items.build(product_id: product_id)
          item.quantity = quantity
          item.save!

        end
      end
    end
  end # up

  def down
    #split items with quantity > 1 into mutliple items
    LineItem.where("quantity>1").each do |line_item|
      #add individual items
      line_item.quantity.times do
        LineItem.create order_id: line_item.order_id, product_id: line_item.product_id, quantity: 1
      end
      #remove original item
      line_item.destroy
    end
  end #down
end
