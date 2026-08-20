class Logger
  def info(message)
    puts "INFO: #{message}"
  end
end

class UserService
  def initialize(logger)
    @logger = logger
  end

  def create_user(name)
    @logger.info("Creating user: #{name}")
    "User created"
  end
end