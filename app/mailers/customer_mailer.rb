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

end
