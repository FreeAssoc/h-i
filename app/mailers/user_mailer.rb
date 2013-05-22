class UserMailer < ActionMailer::Base
  default from: "info@hotelinsider.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @greeting = "Hi"

    mail to: user.email, subject: "Sign Up Confirmation"
  end

  # Send out a message to all users who want to be notified when the site goes live.
  def send_golive_message(users, app_name, site_name, site_url)
    @app_name = app_name
    @site_name = site_name
    @site_url = site_url
    mail( 
          :to => users.all.map(&:email),
          :subject => "Our site #{@site_name} is now live!", 
          :body => "See it here: http://hotelinsider.com"
          # :template_path => "mailers",
          # :template_name => "golive"
        )

  end

  # Send the current newsletter to all subscribers
  def send_newsletter

  end
end
