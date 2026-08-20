class FileProcessor
  def process
    puts "Starting"

    result = yield("file content")

    puts "Finished"

    result
  end
end