module BookKeeping
  VERSION = 3
end

class School
  def initialize
    @roster = {}
  end

  def roster
    @roster
  end

  def students(grade)
    roster[grade] ? roster[grade].sort : []
  end

  def add(student, grade)
    if roster[grade]
      roster[grade] << student
    else
      roster.store(grade,[student])
    end
  end

  def students_by_grade
    roster.sort.each_with_object([]) do |g, a|
      grade_roster = {}
      grade_roster.store(:grade, g[0])
      grade_roster.store(:students, g[1].sort)
      a << grade_roster
    end
  end
end
