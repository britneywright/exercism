module BookKeeping
  VERSION = 2
end

class PhoneNumber
  def self.clean(number)
    formatted_number = number.gsub(/\D/, '').sub(/^1/,'')
    formatted_number if formatted_number.length == 10 &&
                        (2..9).include?(formatted_number[0].to_f) &&
                        (2..9).include?(formatted_number[3].to_f)
  end
end
