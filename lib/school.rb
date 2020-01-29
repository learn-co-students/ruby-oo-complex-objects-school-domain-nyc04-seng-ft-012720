# code here!

class School

    attr_accessor :name, :roster
    
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name,grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted = {}
        roster.map do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
      end
end