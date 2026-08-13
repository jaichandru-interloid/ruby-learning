# Arrange → Act → Assert
class User
  def initialize(name)
    @name = name
  end

  def greeting
    "Hello #{@name}"
  end
end