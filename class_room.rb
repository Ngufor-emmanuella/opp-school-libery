class Classroom
  attr_reader :students
  attr_accessor :label

  # setters
  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end
