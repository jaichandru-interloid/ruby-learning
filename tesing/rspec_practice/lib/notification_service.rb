class NotificationService
  def send_email(email, message)
    puts "Email sent to #{email}: #{message}"
    true
  end
end

class UserService
  def initialize(notification_service)
    @notification_service = notification_service
  end

  def register(email)
    @notification_service.send_email(
      email,
      "Welcome to our application!"
    )

    "User registered"
  end
end