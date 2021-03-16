require_relative "employee"

class Manager < Employee
    attr_reader :managed_employees    
    def initialize(name,title,salary,boss)
        super(name,title,salary,boss)
        @managed_employees = []
    end

    def bonus(multiplier)
        managed_employees.map(&:salary).sum * multiplier
    end

    def add_employee(employee)
        managed_employees << employee
    end
end

