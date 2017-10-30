class RunLengthEncoding
  def self.encode(input)
    g = input.chars.group_by {|c| c }
    return input if g.all? {|k, v| v.length <= 1 }
    g.each_with_object('') do |letter, string|
      string << "#{letter[1].length}#{letter[0]}"
    end
  end

  def self.decode(input)
  end
end
