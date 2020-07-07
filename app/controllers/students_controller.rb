class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    set_student
    @student.active = !@student.active # Toggle activate attr
    @student.save
    redirect_to action: "show" # https://api.rubyonrails.org/classes/ActionController/Redirecting.html
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end