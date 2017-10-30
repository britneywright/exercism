module BookKeeping
  VERSION = 5
end

class Pangram
  def self.pangram?(phrase)
    ('a'..'z').each_with_object(phrase.downcase)
              .all? { |letter, phrase| phrase.include?(letter) }
  end
end
