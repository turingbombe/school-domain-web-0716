# code here!
class School
    attr_accessor :school
    def initialize(name)
        @school_name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = [name]
        else
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
        end
        
        Hash[@roster.sort]
    end
end