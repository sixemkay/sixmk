class CustomerMailer < ActionMailer::Base
  
  default from: "info@sixmk.com"
  layout "mailer"


  def thanks_for_your_order(customer, product)
    @name = customer.name || customer.email || ""
    @address = customer.address
    @email = customer.email
    @product_name = product.name
    mail(to: @email, subject: "Thanks for your order!")
  end


  def your_order_has_shipped(customer, product, tracking_number)
    @name = customer.name || customer.email || ""
    @email = customer.email
    @product_name = product.name
    @tracking_number = tracking_number
    mail(to: @email, subject: "Your order has shipped!")
  end


  # Hardcoded ones

  def thanks_for_ordering_majority_math_sticker(customer)
    @name = customer.name || customer.email || ""
    @address = customer.address
    @email = customer.email
    mail(to: @email, subject: "Thanks for your order!")
  end

end
