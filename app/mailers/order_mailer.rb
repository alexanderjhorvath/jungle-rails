class OrderMailer < ApplicationMailer
  default from: 'no _reply@jungle.com'

  def order_email(order, line_items)
    @order = order
    @line_items = line_items
    @url = 'http://localhost:3000'
    mail(to: 'tantousha@me.com', subject: 'Confirmation for Order: #{order.id}')
  end

end
