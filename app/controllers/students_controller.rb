class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
       
        render json: Student.order("grade").reverse
    end
    def highest_grade
        render json: Student.order("grade").reverse.first
    end
end
