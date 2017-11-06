class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.include?(grade)
    @roster[grade] << name
  end

  def grade(g)
    @roster[g]
  end

  def sort
    @roster.sort_by {|name, grade| name}
  end
end
