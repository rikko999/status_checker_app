class CheckerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def monitoring(site)
    mail(to: '​ alert@pokupon.ua​',
         subject: "#{site.url} - state",
         body: "url: #{site.url}, state: #{site.last_state}, message: #{site.message}")
  end
end
