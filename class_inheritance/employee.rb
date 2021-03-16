class Employee
    attr_reader :salary
   def initialize(name,title,salary,boss)
        @name,@title,@salary,@boss = name,title,salary,boss
   end

   def bonus(multiplier)
    salary * multiplier
   end
   

end