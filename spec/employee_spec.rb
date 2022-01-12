require './lib/employee'

 Rspec.describe Employee do
 	before(:each) do
 		@employee = Employee.new(i)
 	end

 	it 'is initialized with something or other' do
 		expect(@employee).to be_instance_of Employee
 	end
 end
