# code here!
class School
    attr_accessor :name
    attr_reader :roster

    def initialize(name, roster = {})
        @name = name
        @roster = roster
        
    end
#    def roster(roster = nil)
#        if roster

 #       @roster = roster

     
#    end
    


    def add_student(student_name, student_grade)
#        pp @roster
        
        if roster[student_grade]
           roster[student_grade] << student_name
        else
           roster[student_grade] = []
           roster[student_grade] << student_name
        end

#        roster[grade]  name
    end
 
    def grade(student_grade)
        p roster[student_grade]
    end
    
#    pp @roster
    
 
    def sort
        result = {}
        @roster.each do |key, value|
               result[key] = @roster[key].sort
 #              result = @roster.sort_by { |key, val| key }
        end
        p result
    end
    
    # def condition
    #     @condition
    # end 
 
    # def cobble
    #   puts "Your shoe is as good as new!"  
    #   @condition = "new"
    # end 
end






