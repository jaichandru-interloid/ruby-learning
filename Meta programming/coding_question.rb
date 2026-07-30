class Employee
  def initialize (name, age, email)
    @name = name
    @age = age
    @email = email
  end

  [:name, :age, :email].each do |attribute|
    define_method(attribute) do
      instance_variable_get("@#{attribute}")
    end
  end
end

employee = Employee.new("John", 23, "john2003@example.com")
puts employee.name
puts employee.age
puts employee.email
#------------------------------------------------------------------------------------

class Greet
  def method_missing(method_name, *args, &block)
    if method_name.to_s.start_with?("greet_")
      name = method_name.to_s.sub("greet_" ,"").capitalize
      "Hii...!, #{name}."
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    methode_name.to_s.start_with("greet_") || super
  end
end

greet = Greet.new
puts greet.greet_alice
puts greet.greet_bob

#------------------------------------------------------------------------------------

class Config
  attr_reader :settings

  def initialize
    @settings = {}
  end

  def app_name(value)
    @settings[:app_name] = value
  end

  def port(value)
    @settings[:port] = value
  end

  def database(value)
    @settings[:database] = value
  end
end

def config(&block)
  cfg = Config.new
  cfg.instance_eval(&block)
  cfg
end

cfg = config do
  app_name "MyApp"
  port 3000
  database "postgres"
end

puts cfg.settings
#------------------------------------------------------------------------------------


class Person
  def initialize(attributes)
    @attributes = attributes
  end

  [:name, :age, :email].each do |attribute|
    define_method(attribute) do
      @attributes[attribute]
    end
  end
end

person = Person.new(
        name: "John",
        age: 23,
        email: "john2003@example.com"
)

puts person.name
puts person.age
puts person.email

#------------------------------------------------------------------------------------
class Settings
  def set(key, value)
    instance_variable_set("@#{key}",value)
  end

  def get(key)
    instance_variable_get("@#{key}")
  end
end

settings = Settings.new
settings.set("volume", 75)
settings.set("theme", "Dark")
settings.set("language", "English")

puts settings.get("volume")
puts settings.get("theme")
puts settings.get("language")
#------------------------------------------------------------------------------------

class ApiClient
  def method_missing(method_name, *args, &block)
    if method_name.to_s.start_with?("get_")
      resource = method_name.to_s.sub("get_", "").capitalize
      "Fetch #{resource}"
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?("get_") || super
  end
end

api = ApiClient.new
puts api.get_user
puts api.get_source
#------------------------------------------------------------------------------------

class Demo
  def greet
    puts "Hello..!"
  end

  def wish
    puts "Have a good day...!"
  end

  public_instance_methods(false).each do |method|
    puts method
  end
end
#------------------------------------------------------------------------------------

class Person
  def greet
    "Hii..!"
  end

  def welcome
    "Welcome...!"
  end
end

methods = ["greet", "welcome"]
person = Person.new

methods.each do |method_name|
  puts person.public_send(method_name)
end
#------------------------------------------------------------------------------------

class Recipe
  attr_reader :ingredients

  def initialize
    @ingredients = []
  end

  def ingredient(item)
    @ingredients << item
  end
end

recipe = Recipe.new
recipe.ingredient("Rice")
recipe.ingredient("Dall")

puts recipe.ingredients
#------------------------------------------------------------------------------------
