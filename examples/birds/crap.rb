class Crap
  attr_accessor :location

  def initialize(bird)
    @location = bird.location
  end
  
  def projected_location(wind)
    [@location, wind].transpose.map {|v| v.reduce(:+)} 
  end
end
