require "rpn_calculator"
describe RPNCalculator do
attr_accessor :calculator

  before do
    @calculator = RPNCalculator.new
  end

  it "adds two numbers" do
    calculator.push(2)
    calculator.push(3)
    calculator.plus
    calculator.value.should == 5
  end

  it "adds three numbers" do
    calculator.push(2)
    calculator.push(3)
    calculator.push(4)
    calculator.plus
    calculator.value.should == 7
    calculator.plus
    calculator.value.should == 9
  end

  it "subtracts the second number from the first number" do
    calculator.push(2)
    calculator.push(3)
    calculator.minus
    calculator.value.should == -1
  end

  it "adds and subtracts" do
    calculator.push(2)
    calculator.push(3)
    calculator.push(4)
    calculator.minus
    calculator.value.should == -1
    calculator.plus
    calculator.value.should == 1
  end

  it "multiplies and divides" do
    calculator.push(2)
    calculator.push(3)
    calculator.push(4)
    calculator.divide
    calculator.value.should == (3.0 / 4.0)
    calculator.times
    calculator.value.should == 2.0 * (3.0 / 4.0)
  end

  it "resolves operator precedence unambiguously" do
    # 1 2 + 3 * => (1 + 2) * 3
    calculator.push(1)
    calculator.push(2)
    calculator.plus
    calculator.push(3)
    calculator.times
    calculator.value.should == (1+2)*3

    # 1 2 3 * + => 1 + (2 * 3)
    calculator.push(1)
    calculator.push(2)
    calculator.push(3)
    calculator.times
    calculator.plus
    calculator.value.should == 1+(2*3)
  end

  it "fails informatively when there's not enough values stacked away" do
    expect {
      calculator.plus
    }.to raise_error("calculator is empty")

    expect {
      calculator.minus
    }.to raise_error("calculator is empty")

    expect {
      calculator.times
    }.to raise_error("calculator is empty")

    expect {
      calculator.divide
    }.to raise_error("calculator is empty")
  end
end
