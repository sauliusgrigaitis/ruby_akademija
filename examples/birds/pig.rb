class Pig
  attr_accessor :location

  def initialize
    @location = [0,0,0]
  end

  def launch(wind = [0,0,0])
    raise "too strong" if wind[0] + wind[1] + wind[2] > 100
    @location = [@location, wind].transpose.map {|v| v.reduce(:+)} 
    true
  end

  def heavy?
    true
  end
end
