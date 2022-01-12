require './lib/department'
require './lib/employee'

 RSpec.describe Department do
 	before(:each) do
 		@customer_service = Department.new('Customer Service')
 	end

 	it 'is initialized with a name' do
 		expect(@customer_service).to be_instance_of Department
 		expect(@customer_service.name).to be_instance_of String
 		expect(@customer_service.name).to eq 'Customer Service'
 	end

  it 'is initialized with an empty array of employees' do
    expect(@customer_service.employees).to be_instance_of Array
    expect(@customer_service.employees).to be_empty
  end

  describe '#hire' do
    before(:each) do
      @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
      @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
      @customer_service.hire(@bobbi)
      @customer_service.hire(@aaron)
    end

    it 'adds an employee to the employee array' do
      expect(@customer_service.employees).to eq [@bobbi, @aaron]
    end
  end

  describe '#expense and #expenses' do
    it '#expenses keeps a tally of all expenses made' do
      expect(@customer_service.expenses).to be 0
      @customer_service.expense(100)
      @customer_service.expense(25)
      expect(@customer_service.expenses).to be 125
    end
  end
 end
