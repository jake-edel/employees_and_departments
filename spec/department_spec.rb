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
 end
