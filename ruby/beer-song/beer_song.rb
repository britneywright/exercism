module BookKeeping
  VERSION = 3
end

class BeerSong

  def initialize
  end

  def verse(beers)
    if beers > 2
    <<~TEXT
      #{beers} bottles of beer on the wall, #{beers} bottles of beer.
      Take one down and pass it around, #{beers-1} bottles of beer on the wall.
    TEXT
    elsif beers == 2
      <<~TEXT
        2 bottles of beer on the wall, 2 bottles of beer.
        Take one down and pass it around, 1 bottle of beer on the wall.
      TEXT
    elsif beers == 1
      <<~TEXT
        1 bottle of beer on the wall, 1 bottle of beer.
        Take it down and pass it around, no more bottles of beer on the wall.
      TEXT
    elsif beers == 0
      <<~TEXT
        No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall.
      TEXT
    end
  end

  def verses(*beers)
    num_of_beers = beers[0]
    l = ""
    until num_of_beers < beers[1]
      l << "#{verse(num_of_beers)}"
      l << "\n" unless beers.last == num_of_beers
      num_of_beers -= 1
    end
    l
  end
end
