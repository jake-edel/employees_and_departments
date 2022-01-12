require './lib/department'

 Rspec.describe Department do
 	before(:each) do
 		@department = Department.new(i)
 	end

 	it 'is initialized with something or other' do
 		expect(@department).to be_instance_of Department
 	end
 end
