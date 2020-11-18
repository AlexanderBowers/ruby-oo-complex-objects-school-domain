require 'pry'
class School
    attr_reader :roster

    def initialize(name)
        @name = name
        roster = {}
        @roster = roster
        
    end
    
    def add_student(student, grade)
        if @roster.key?(grade) == false 
            @roster[grade] = []
            @roster[grade] << student
        elsif @roster.has_key?(grade) == true
            @roster[grade] << student
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
           @roster[grade] = @roster[grade].sort
        end
        @roster = @roster.sort.to_h
    end
end