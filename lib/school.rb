# code here!
class School
    attr_accessor :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end     

    def add_student(student, grade)
        if @roster[grade]
            @roster[grade] << student 
        else 
            roster[grade] = []
            roster[grade] << student
        end        
    end   
    
    def grade(grade)
        @roster[grade]
    end    
    
    def sort
        sorted_roster = {}
        @roster.each do |key, value|
            sorted_roster[key] = value.sort
        end 
        return sorted_roster
    end    

end
