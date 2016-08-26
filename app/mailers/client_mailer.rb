class ClientMailer < ActionMailer::Base
  
  default from: "info@sixmk.com"
  layout "mailer"


  def five_years_of_five_stars(client)
    @name = client.first_name || client.business_name || ""
    @email = client.email
    mail(to: @email, subject: "Thanks for five years of five stars!")
  end


  def thanks_for_your_business(client)
    @name = client.first_name || client.business_name || ""
    @email = client.email
    mail(to: @email, subject: "Thanks for your business!")
  end

end
