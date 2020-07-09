class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

    def activate
      @student = Student.find(params[:id])
      @student.active = !@student.active
      @student.save
      redirect_to student_path
    end
      #find the student, if the status is true then make it false and vice versa
      #then save the change and redirect to show page
    #define what active means
  

  private

    def set_student
      @student = Student.find(params[:id])
    end
end