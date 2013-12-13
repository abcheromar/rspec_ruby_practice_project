require "hello"

describe "the hello function:" do
  it "must say Hello!" do
    hello.should == "Hello!"
  end
end


describe "the greet function" do
  it "says hello to someone given a param" do
  	
    greet("Alice").should == "Hello, Alice!"
  end

  it "says hello to someone else" do
    greet("Bob").should == "Hello, Bob!"
  end


end
