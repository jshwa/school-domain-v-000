class School

  def initialize(name)
    @name = name

  end

  def roster
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.include?(grade)
    @roster[grade] << name
  end

end
