class ErrorMailer < ActionMailer::Base
  default from: "Depot error mailer"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.error_mailer.error.subject
  #
  def error(exception)
    @exception = exception
    mail to: "nettiks@live.com", subject: "Rescue error occurred: #{exception}"
  end
end
