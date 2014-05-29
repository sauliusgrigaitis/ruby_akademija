class Victim
  attr_accessor :location
 
  def initialize 
    @location = [0,0,0]
  end
  
  def left
    @location[0] =- 1
  end
end
