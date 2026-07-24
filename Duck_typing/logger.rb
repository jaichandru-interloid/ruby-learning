class FileLogger
  def write(message); "File : #{message}"; end
end

class ConsoleLogger
  def write(message); "Console: #{message}"; end
end

def log(logger,message); logger.write(message); end

file_logger = FileLogger.new
console_logger = ConsoleLogger.new

puts log(file_logger, "Logged in successfully")
puts log(console_logger, "Logged out successfully")