require 'test_helper'

class SendingErrorMessagesTest < ActionDispatch::IntegrationTest
  
  
  test "should send an error email to the admininstrator" do
    ActionMailer::Base.deliveries = []
    ErrorMailer.error(Exception.new("Testing error mailer")).deliver
    mail = ActionMailer::Base.deliveries.last
    assert_equal(["nettiks@live.com"], mail.to)
    assert_equal("Depot error mailer", mail[:from].value)
    assert_match /An error has occurred/, mail.body.encoded
  end

  
end
