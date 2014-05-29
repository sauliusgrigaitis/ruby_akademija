require './spec_helper.rb'

describe Victim do
  it "has location" do
    victim = Victim.new
    expect(victim.location).to eql([0,0,0])
  end

  it "can move left" do
    victim = Victim.new
    victim.left 
    expect(victim.location).to eql([-1,0,0])
  end
end
