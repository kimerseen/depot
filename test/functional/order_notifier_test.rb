require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Order confirmation email.", mail.subject
    assert_equal ["dave.thomas@mail.com"], mail.to
    assert_equal ["Grazybom"], mail.from
    assert_match /Programming Ruby/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Your order has been shipped!", mail.subject
    assert_equal ["dave.thomas@mail.com"], mail.to
    assert_equal ["Grazybom"], mail.from
    assert_match /Programming Ruby/, mail.body.encoded
  end

end
