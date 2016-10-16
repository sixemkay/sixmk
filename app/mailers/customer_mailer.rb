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


  def your_order_has_shipped(customer, product, tracking_link)
    @name = customer.name || customer.email || ""
    @email = customer.email
    @product_name = product.name
    @tracking_link = tracking_link
    mail(to: @email, subject: "Your order has shipped!")
  end

end
