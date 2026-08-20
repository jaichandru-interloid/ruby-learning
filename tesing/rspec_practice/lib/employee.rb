class Employee
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def department
    "Engineering"
  end

  def salary
    50000
  end

  def details
    "#{name} - #{department} - #{salary}"
  end
end