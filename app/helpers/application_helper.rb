module ApplicationHelper
  
  def product_info item
    Product.find(item.product_id)
  end

end
