class Instructor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def fail_student(student_name, test_name)
    BoatingTest.all.each do |test|
      if test.student.full_name == student_name && test.test_name == test_name
        test.test_status = "failed"
      end
    end
  end

  def pass_student(student_name, test_name)
    BoatingTest.all.each do |test|
      if test.student.full_name == student_name && test.test_name == test_name
        test.test_status = "passed"
      end
    end
  end

  def boating_tests
    BoatingTest.all.select do |test|
      test.instructor == self
    end
  end

  def students
    # BoatingTest.all.map do |test|
    #   if test.instructor == self
    #     test.student.full_name
    #   end
    # end.compact
    
    self.boating_tests.map do |test|
      test.student.full_name
    end.uniq!
  end

  def self.all
    @@all
  end
end
