class Employee
  attr_reader :name,
              :age,
              :salary


  def initialize(data)
    @name = data[:name]
    @age = data[:age]
    @salary = data[:salary]
  end
end
