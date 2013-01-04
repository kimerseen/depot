Order.transaction do
  (15..90).each do |i|
    Order.create(:name => "Customer #{i}", :address => "#{i} Main Street", :email => "customer-#{i}@example.com", :pay_type => "Check")
  end
end