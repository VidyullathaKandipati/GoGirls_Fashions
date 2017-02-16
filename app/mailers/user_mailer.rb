class UserMailer < ApplicationMailer

  default from: 'gogirlsfashions@gmail.com'

  def welcome(user)
    @user = user #@user will be whatever we pass in to the 'welcome' method
    mail( :to => @user.email, :subject => 'Welcome to ......', :cc => 'gogirlsfashions@gmail.com')
  end

  def payment_success(order)
    @order = order
    mail( :to => @order.user.email, :subject => "Order Confirmation - Order # #{@order.id}", :cc => 'gogirlsfashions@gmail.com')
  end

end
