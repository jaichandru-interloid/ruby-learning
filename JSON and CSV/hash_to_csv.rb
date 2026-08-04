require "csv"
class Hash
  FILE = "hash_to_csv.csv"
  def initialize (data)
    @data = data
  end

  def load_data
    CSV.open(FILE, "w") do |csv|
      csv << ["Roll No", "Name", "Tamil", "English", "Maths", "Science", "Social"]
      @data.each do |student|
        csv << [
      student[:roll_no],
      student[:name],
      student[:tamil],
      student[:english],
      student[:maths],
      student[:science],
      student[:social]
    ]
      end
    end
    puts "Data loaded to the CSV successfully...!"
  end
end

data_array = students = [
  {
    roll_no: 101,
    name: "Aarav",
    tamil: 85,
    english: 78,
    maths: 92,
    science: 88,
    social: 81
  },
  {
    roll_no: 102,
    name: "Diya",
    tamil: 90,
    english: 86,
    maths: 95,
    science: 91,
    social: 89
  },
  {
    roll_no: 103,
    name: "Vikram",
    tamil: 72,
    english: 75,
    maths: 68,
    science: 80,
    social: 77
  },
  {
    roll_no: 104,
    name: "Meera",
    tamil: 88,
    english: 92,
    maths: 90,
    science: 94,
    social: 93
  },
  {
    roll_no: 105,
    name: "Rahul",
    tamil: 65,
    english: 70,
    maths: 73,
    science: 69,
    social: 71
  },
  {
    roll_no: 106,
    name: "Priya",
    tamil: 95,
    english: 93,
    maths: 98,
    science: 96,
    social: 97
  },
  {
    roll_no: 107,
    name: "Arjun",
    tamil: 80,
    english: 82,
    maths: 79,
    science: 84,
    social: 81
  },
  {
    roll_no: 108,
    name: "Kavya",
    tamil: 91,
    english: 89,
    maths: 94,
    science: 92,
    social: 90
  },
  {
    roll_no: 109,
    name: "Sanjay",
    tamil: 76,
    english: 74,
    maths: 78,
    science: 75,
    social: 79
  },
  {
    roll_no: 110,
    name: "Nisha",
    tamil: 84,
    english: 87,
    maths: 85,
    science: 88,
    social: 86
  }
]

hash = Hash.new(data_array)
hash.load_data