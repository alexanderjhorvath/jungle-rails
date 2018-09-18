module ApplicationHelper

  def product_info item
    Product.find(item.product_id)
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
end
