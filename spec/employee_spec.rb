require './lib/employee'

RSpec.describe 'Iteration 1' do
  before :each do

    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
  end

  it "Is an instance of Employee class" do

    expect(@bobbi).to be_an_instance_of(Employee)
  end

  it "can output employee name" do

    expect(@bobbi.name).to eq("Bobbi Jaeger")
  end

  it "can output employee age" do

    expect(@bobbi.age).to eq("30")
  end

  it "can output employee salary" do

    expect(@bobbi.salary).to eq("100000")
  end
end
