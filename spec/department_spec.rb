require './lib/department'
require './lib/employee'

 RSpec.describe Department do
 	before(:each) do
 		@department = Department.new('Customer Service')
 	end

 	it 'is initialized with a name' do
 		expect(@department).to be_instance_of Department
 		expect(@department.name).to be_instance_of String
 		expect(@department.name).to eq 'Customer Service'
 	end
 end
