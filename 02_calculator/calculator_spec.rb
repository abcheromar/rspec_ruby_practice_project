require "calculator"

describe "add" do

  it "adds 0 and 0" do
  add(0,0).should == 0
  end

  it "adds 2 and 2" do
    add(2,2).should == 4
  end

  it "adds positive numbers" do
    add(2,6).should == 8
  end

end


describe "subtract" do
  it "subtracts numbers" do
  subtract(10,4).should == 6
  end
end

describe "sum" do
  it "computes the sum of an empty array" do
    sum([]).should == 0
  end

  it "computes the sum of an array of one number" do
    sum([7]).should == 7
  end

  it "computes the sum of an array of two numbers" do
    sum([7,11]).should == 18
  end

  it "computes the sum of an array of many numbers" do
    sum([1,3,5,7,9]).should == 25
  end
end

describe "multiply" do 
  
  it "multiplies 5 and 5" do
  multiply(5,5).should == 25
  end

  it "multiplies 12 and 2" do
    multiply(12,2).should == 24
  end

  it "multiplies any numbers of params, for example:" do
    multiply(9,7,3,4).should == 756
  end
end


describe "power" do
  
  it "calculates 2 to the power of 6" do
    power(2,6).should == 64
  end

  it "calculates 5 to the power of 2" do
    power(5,2) == 25
  end

end

describe "factorial" do

  it "calculates the factorial of negative number: -3" do
    factorial(-3).should == "Give a postive number"
  end

  it "calculates the factorial of 0" do
    factorial(0).should == 1
  end

  it "calculates the factorial of 1" do
    factorial(1).should == 1
  end

  it "calculates the factorial of 6" do
    factorial(6).should == 720
  end

end
