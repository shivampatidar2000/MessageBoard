!/usr/bin/ruby

 
$global_variable = 10
class Employee
         
    def print_global
        puts "Global variable in Employee class is #$global_variable"
    end
    def initialize(id, name, age)
        # Instance Variables     
        @Emp_id = id
        @Emp_name = name
        @Emp_age = age
    end

        # displaying result
    def display_details()
    
        puts "The Employee id is  #@Emp_id"
        puts "The Employee name is #@Emp_name"
        puts "The Employee age is  #@Emp_age"    
    end

end

class Two2
 def print_global
 puts "Global variable in two2 class is #$global_variable"
 end
end
Employeeobj = Employee.new("11", "Ram", 21);
Employeeobj.print_global
Employeeobj.display_details()

Two2obj = Two2.new
Two2obj.print_global
    