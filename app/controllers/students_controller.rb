# The official solution was credited below:

class StudentsController < ApplicationController

  # The below method passed the non-bonus test:
  def index_0
    students = Student.all
    render json: students
  end

  def grades 
    students = Student.order(grade: :desc)
    render json: students
  end
  
  def highest_grade 
    student = Student.order(grade: :desc).limit(1)
    render json: student
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  # The method below is from the official solution and it 
  # works for the bonus test as well as for the 
  # non-bonus test:
  def index
    students = if params[:name]
                 Student.by_name(params[:name])
               else
                 Student.all
               end    
    render json: students
  end

end
