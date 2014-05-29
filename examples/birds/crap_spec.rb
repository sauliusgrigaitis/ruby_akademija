require './spec_helper.rb'

describe Crap do
  it "craps in his own nest after first flap" do
    bird = Bird.new
    bird.flap_up
    expect(bird.crap.location).to eql([0,0,1])
  end

  it "craps near nest after side flap" do
    bird = Bird.new
    bird.flap_right
    expect(bird.crap.location).to eql([1,0,0])
  end

  it "knows where it drops" do
    bird = Bird.new
    bird.flap_up
    expect(bird.crap.projected_location([1,1,-1])).to eql([1,1,0]) 
  end

 it "knows where it drops even when strong wind blows" do
    bird = Bird.new
    bird.flap_up
    expect(bird.crap.projected_location([20,20,-1])).to eql([20,20,0]) 
  end
end 
