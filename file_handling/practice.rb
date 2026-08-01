FILE_NAME = "todo.txt"

def add_task(task)
  File.open(FILE_NAME, "a") do |file|
    file.puts(task)
  end
  puts "Task added!"
end

def view_tasks
  if File.exist?(FILE_NAME)
    puts "To-Do List:"
    File.foreach(FILE_NAME).each_with_index do |task, index|
      puts "#{index + 1}. #{task.chomp}"
    end
  else
    puts "No tasks found."
  end
end

loop do
  puts "=== To-Do List ==="
  puts "1. Add Task"
  puts "2. View Tasks"
  puts "3. Exit"
  print "Choose an option: "

  choice = gets.chomp

  case choice
  when "1"
    print "Enter a task: "
    task = gets.chomp
    add_task(task)
  when "2"
    view_tasks
  when "3"
    puts "Exitin...!"
    break
  else
    puts "Invalid choice. Try again."
  end
end