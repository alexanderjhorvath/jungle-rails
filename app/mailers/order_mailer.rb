class OrderMailer < ApplicationMailer
  default from: 'no _reply@jungle.com'

  def order_email(order)
    @order = order
    @url = 'http://localhost:3000'
    mail(to: @order.email, subject: 'Order confirmation: ')
  end
end
