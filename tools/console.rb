require_relative '../config/environment'

# Declare your variables here~~~

helen = Instructor.new("Helen")
cristina = Student.new("Cristina", "Murillo")
shemar = Student.new("Shemar", "Jos")
test1 = BoatingTest.new(cristina, "Boat Challenge", "failed", helen)

cristina.add_boating_test(helen, "2nd Boat Challenge", "passed")

# don't remove!
binding.pry
0
