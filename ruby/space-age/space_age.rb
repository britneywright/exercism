module BookKeeping
  VERSION = 1
end

PLANETS_ORBIT_IN_EARTH_YEARS = {'mercury' => 0.2408467, 'venus' => 0.61519726,
                                'mars' => 1.8808158, 'jupiter' => 11.862615,
                                'saturn' => 29.447498, 'uranus' => 84.016846,
                                'neptune' => 164.79132}

class SpaceAge
  def initialize(seconds)
    @seconds = seconds.to_f
  end

  def on_earth
     @seconds / 31557600
  end

  PLANETS_ORBIT_IN_EARTH_YEARS.each do |planet, time|
    define_method("on_#{planet}") do
      on_earth / time
    end
  end
end
