require 'rubygems'
require 'spec'
require 'fibonacci'

describe Integer, 'fibonacci' do
  it "should be 0 for first fibonacci number" do
    1.fibonacci.should == 0
  end
end

    


