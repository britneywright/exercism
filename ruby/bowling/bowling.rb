require 'pry'
class Game

  class BowlingError < StandardError
  end

  def initialize
    @scores = []
  end

  def scores
    @scores
  end

  def roll(pins)
    if pins >= 0 && pins <= 10
      @scores << pins
    else
      raise BowlingError.new
    end
  end

  def score
    raise BowlingError.new if @scores.empty?
    roll = 0
    frame = 0
    calculating = []
    until frame == 9
      if @scores[roll] == 10
        calculating << @scores[roll] + @scores[roll + 1] + @scores[roll + 2]
        roll += 1
      elsif @scores[roll] + @scores[roll + 1] == 10
        calculating << @scores[roll] + @scores[roll + 1] + @scores[roll + 2]
        roll += 2
      elsif @scores[roll] + @scores[roll + 1] < 10
        calculating << @scores[roll] + @scores[roll + 1]
        roll += 2
      else
        raise BowlingError.new
      end
      frame += 1
    end
    calculating << @scores[roll] + @scores[roll + 1]
    calculating << @scores[roll + 2] if @scores[roll + 2]
    calculating.reduce(:+)
  end
end
