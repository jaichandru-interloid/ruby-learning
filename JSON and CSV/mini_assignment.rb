require "csv"
require "json"
class Student
  FILE_CSV = "mini_assignment.csv"
  def initialize
    @data = if File.exist?(FILE_JSON) && !File.empty?(FILE_JSON)
      JSON.parse(File.read(FILE_JSON))
    else
      []
    end
  end

  def transfer
    CSV.foreach(FILE_CSV, headers: true) do |row|
      marks = [row["Mark1"].to_i,
                row["Mark2"].to_i,
                row["Mark3"].to_i
              ]

      total = marks.sum
      average = (total.to_f / marks.size).round(2)
      report = {name: row["Name"],
                mark1: row["Mark1"], 
                mark2: row["Mark2"],
                mark3: row["Mark3"],
                total: total,
                average: average}
      @data << report
    end

    File.open(FILE_JSON, "w") do |file|
      file.write(JSON.pretty_generate(@data))
    end
    puts "Data converted Successfully....!"
    display_data
  end

  def display_data
    puts "\n========== SUMMARY =========="
    puts "Total Records : #{@data.size}"
    puts "Source File   : mini_assignment.csv"
    puts "Output File   : student_report.json"
    puts "Status        : CSV converted to JSON successfully!"
    puts "============================="
  end
end

FILE_JSON = "student_report.json"
student = Student.new
student.transfer
