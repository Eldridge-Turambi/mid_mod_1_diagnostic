require './lib/department'
require './lib/employee'

RSpec.describe 'Iteration 2' do
  before :each do
    @customer_service = Department.new("Customer Service")

  end

  it "is an instance of Department" do

    expect(@customer_service).to be_an_instance_of(Department)
  end

  it "can output the name of the department" do

    expect(@customer_service.name).to eq("Customer Service")
  end

  it "has no employees by default" do

    expect(@customer_service.employees).to eq([])
  end

  it "has the ability to hire" do
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})

    @customer_service.hire(bobbi)
    @customer_service.hire(aaron)

    expect(@customer_service.employees).to eq([bobbi, aaron])
  end

  it "has 0 expenses by default" do
    #@customer_service.expense(0)

    expect(@customer_service.expenses).to eq(0)
    #"expenses" is from line 8 in lib file
  end

  it "has the ability to calculate expenses" do
    @customer_service.expense(100)
    @customer_service.expense(25)

    expect(@customer_service.expenses).to eq(125)
  end



end
