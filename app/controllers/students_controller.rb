class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate_student
    set_student
    render 'activate'
    
  end
  
  private

    def set_student
      @student = Student.find_by_id(params[:id])
    end
end