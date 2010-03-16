require 'rubygems'
require 'spec'
require 'fibonacci'

describe Integer, 'fibonacci' do
  it "should be 0 for first fibonacci number" do
    1.fibonacci.should == 0
  end

  it "should be 0 for second fibonacci number" do
    2.fibonacci.should == 1
  end

  it "should be 1 for third fibonacci number" do
    3.fibonacci.should == 1
  end

  it "should be 2 for forth fibonacci number" do
    4.fibonacci.should == 2
  end

  it "should be 55 for eleventh fibonacci number" do
    11.fibonacci.should == 55
  end
end

