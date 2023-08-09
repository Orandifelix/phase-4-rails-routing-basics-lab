class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
        students = Student.order(grade: :desc)
        # students = Student.order(grade: :asc)
        render json: students
    end

    def highest_grade
        student = Student.order(grade: :desc).first
        # student = Student.order(grade: :desc).last
        render json: student
    end
end
