require './spec_helper.rb'

describe Pig do
  it "can launch itself" do
    pig = Pig.new
    expect(pig.launch).to be(true)
  end

  it "flies to location based on launch vector" do
    pig = Pig.new 
    pig.launch([1,1,1])
    expect(pig.location).to eql([1,1,1])
  end

  it "flies to location based on launch vector" do
    pig = Pig.new 
    expect { pig.launch([50,50,50]) }.to raise_error
  end

  it "is heavy" do
    pig = Pig.new
    expect(1..10).to cover(3)
  end
end
