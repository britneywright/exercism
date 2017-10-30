module BookKeeping
  VERSION = 3
end

FACTOR_TO_SPEECH = {
  3 => "Pling",
  5 => "Plang",
  7 => "Plong"
}

class Raindrops
  def self.convert(number)
    raindrop_speak = FACTOR_TO_SPEECH.each_with_object('') do |f, a|
      a << f[1] if number % f[0] == 0
    end
    raindrop_speak.empty? ? number.to_s : raindrop_speak
  end
end
