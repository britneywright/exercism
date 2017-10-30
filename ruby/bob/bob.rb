module BookKeeping
  VERSION = 1
end

class Bob
  def self.hey(remark)
    clean_remark = remark.strip
    if clean_remark.upcase == clean_remark && clean_remark.upcase != clean_remark.downcase
      'Whoa, chill out!'
    elsif (/\!$|\.$|\w$|d$/).match(clean_remark)
      'Whatever.'
    elsif (/\?$/).match(clean_remark)
      'Sure.'
    else
      'Fine. Be that way!'
    end
  end
end
