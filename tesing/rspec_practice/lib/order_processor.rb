# frozen_string_literal: true

class EmailService
  def send_confirmation(_email)
    true
  end
end

class OrderProcessor
  def initialize(email_service)
    @email_service = email_service
  end

  def process(email)
    @email_service.send_confirmation(email)
    'Order processed'
  end
end
