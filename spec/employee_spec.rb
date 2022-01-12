require './lib/employee'

 RSpec.describe Employee do
 	before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
 	end

 	it 'is initialized with a hash of attributes, and can return its name, age, and salary' do
 		expect(@bobbi).to be_instance_of Employee
 		expect(@bobbi.name).to be_instance_of String
 		expect(@bobbi.name).to be eq 'Bobbi Jaeger'
 		expect(@bobbi.age).to be_instance_of String
 		expect(@bobbi.age).to be eq '30'
 		expect(@bobbi.salary).to be_instance_of String
 		expect(@bobbi.salary).to be eq '100000'
 	end
end
