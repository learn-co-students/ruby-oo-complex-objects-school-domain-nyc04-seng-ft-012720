# code here!
class School
    attr_accessor :roster
    def initialize(name)
        @roster = Hash.new
    end
    def add_student(student, grade)
        if @roster.key?(grade)
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        output = Hash.new
        @roster.each{|k,v| output[k] = v.sort}
        return output
    end
end