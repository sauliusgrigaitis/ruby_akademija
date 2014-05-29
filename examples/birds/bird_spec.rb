require './spec_helper.rb'

describe Bird do
  before do
    @bird = Bird.new
  end

  context "baby" do
    it "borns at 0m altitude" do
      expect(@bird.altitude).to eql(0) 
    end

    it "raises to 1m altitude when flaps once" do
      @bird.flap_up
      expect(@bird.altitude).to eql(1)
    end

    it "decends by 1m altitude when flaps down once" do
      @bird.flap_down
      expect(@bird.altitude).to eql(-1)
    end

    it "borns at 0, 0, 0 location" do
      expect(@bird.location).to eql([0,0,0])
    end
  end

  context "move" do
    it "can flap forward" do
      @bird.flap_forward
      expect(@bird.location).to eql([0, 1, 0])
    end

    it "can move left" do
      @bird.flap_left
      expect(@bird.location).to eql([-1, 0, 0])
    end

    it "can move right" do
      @bird.flap_right
      expect(@bird.location).to eql([1, 0, 0])
    end
  end
end

describe "Crappy Bird" do
  context "no wind" do
    it "can crap" do
      bird = Bird.new
      expect(bird.crap).to be_instance_of(Crap)
    end
  
    it "can attack victims using crap" do
      bird = Bird.new 
      expect(bird.attack([Victim.new])).to equal(true)
    end

    it "can attack victims using crap" do
      bird = Bird.new 
      bird.flap_left
      expect(bird.attack([Victim.new])).to equal(false)
    end

    it "can attack victims using crap" do
      bird = Bird.new 
      victim = Victim.new

      victim.left 
      expect(bird.attack([Victim.new, victim])).to equal(true)
    end
  end

  context "windy" do

    it "it respects wind" do
      bird = Bird.new 
      victim = Victim.new
 
      bird.flap_up

      expect(bird.attack([victim], [1,1,1])).to equal(false)
    end

    it "it respects strong wind" do
      bird = Bird.new 
      victim = Victim.new
 
      bird.flap_up

      expect(bird.attack([victim], [10,10,1])).to equal(false)
    end

    it "it respects strong wind even if victim moves" do
      bird = Bird.new 
      victim = Victim.new
 
      bird.flap_up
      victim.left

      expect(bird.attack([victim], [-1,0,-1])).to equal(true)
    end
  end
end
