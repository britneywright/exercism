module BookKeeping
  VERSION = 1
end

class ETL
  def self.transform(old_hash)
    old_hash.each_with_object({}) do |s, h|
      s.last.each { |v| h.store(v.downcase, s.first) }
    end
  end
end
