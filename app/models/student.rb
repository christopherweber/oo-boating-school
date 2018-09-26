class Student
  attr_reader :first_name, :last_name, :full_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = "#{@first_name} #{@last_name}"
    @@all << self
  end

  def add_boating_test(instructor, test_name, test_status)
    boatingtest = BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(full_name)
    @@all.find do |student|
      student.full_name == full_name
    end
  end

  def self.full_names
    @@all.map do |student|
      student.full_name
    end
  end

  def self.all
    @@all
  end
end
