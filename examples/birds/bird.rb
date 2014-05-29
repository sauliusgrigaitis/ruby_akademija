class Bird
  attr_accessor :location

  def initialize
    @location = [0,0,0]
  end
 
  def altitude
    @location[2]
  end

  def flap_up
    @location[2] =+ 1  
  end

  def flap_down
    @location[2] =- 1  
  end

  def flap_forward
    @location[1] =+ 1
  end

  def flap_left
    @location[0] =- 1
  end

  def flap_right
    @location[0] =+ 1
  end

  def crap
    Crap.new(self)
  end 

  def attack(victims, wind = [0,0,0])
    
    !victims.select do |v| 
      v.location == crap.projected_location(wind)
    end.empty?

  end

end
