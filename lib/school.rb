require 'pry'

class School
  attr_reader :school
  attr_accessor :student_grade, :roster, :student_name, :school_grade

  def initialize (school_name)
    @school = school_name
    @roster = {}
  end

  def add_student (student_name, student_grade)
    @student_name = student_name
    @student_grade = student_grade
    if @roster.has_key? (student_grade)
      @roster[@grade] << student_name
    else
      @grade = student_grade
      @roster[@grade] = []
      @roster[@grade] << student_name
    end
  end

  def grade (grade)
     @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
