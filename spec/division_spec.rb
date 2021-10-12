require './lib/department'
require './lib/employee'
require './lib/division'

RSpec.describe Division do
  before :each do
    @division1 = Division.new('Division 1')

    @customer_service = Department.new("Customer Service")
    @shipping = Department.new("Shipping")

    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    @sydney = Employee.new({name: "Sydney Smith", age: "30", salary: "100000"})
    @reggie = Employee.new({name: "Reggie Tanaka", age: "30", salary: "100000"})
  end

  it 'is an instance of Division class' do
    expect(@division1).to be_an_instance_of(Division)
  end

  it 'has a name' do
    expect(@division1.name).to eq('Division 1')
  end

  it 'has empty departments by default' do
    expect(@division1.departments).to eq([])
  end

  it '#add_department' do
    @division1.add_department(@customer_service)
    @division1.add_department(@shipping)

    expect(@division1.departments).to eq([@customer_service, @shipping])
  end

  it '#departments_with_multiple_employees' do
    @division1.add_department(@customer_service)
    @division1.add_department(@shipping)
    @customer_service.hire(@bobbi)
    @shipping.hire(@sydney)
    @shipping.hire(@reggie)

    expect(@division1.departments_with_multiple_employees).to eq([@shipping])
  end

  it '#employee_names' do
    @division1.add_department(@customer_service)
    @division1.add_department(@shipping)
    @customer_service.hire(@bobbi)
    @shipping.hire(@sydney)
    @shipping.hire(@reggie)

    expect(@division1.employee_names).to eq(['Bobbi Jaeger', 'Sydney Smith', 'Reggie Tanaka'])
  end

  it '#number_of_employees' do
    @division1.add_department(@customer_service)
    @division1.add_department(@shipping)
    @customer_service.hire(@bobbi)
    @shipping.hire(@sydney)
    @shipping.hire(@reggie)

    expect(@division1.number_of_employees).to eq(3)
  end
end
