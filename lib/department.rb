class Department
  attr_reader :name, :employees

  def initialize(name)
    @name = name
    @employees = []
  end

  def hire(employee)
    return unless employee.instance_of? Employee

    @employees << employee
  end
end
