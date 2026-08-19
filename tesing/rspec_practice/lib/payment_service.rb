class PaymentGateway
  def charge(amount)
    "Payment of #{amount} successful"
  end
end

class Order
  def initialize(payment_gateway)
    @payment_gateway = payment_gateway
  end

  def place_order(amount)
    @payment_gateway.charge(amount)
  end
end