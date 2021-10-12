class Division
  attr_reader :name,
              :departments

  def initialize(name)
    @name = name
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def departments_with_multiple_employees
    @departments.find_all do |department|
      department.employees.count >= 2
    end
  end

  def employee_names
    @departments.map do |department|
      department.employees.map do |employee|
        employee.name
      end
    end.flatten
  end

  def number_of_employees
    @departments.sum do |department|
      department.employees.count
    end
  end
end
