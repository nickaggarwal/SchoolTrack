class StudentsController < ApplicationController

  def index
    @students  = StudentDetail.all
  end

  def new
    @student = StudentDetail.new
  end

  def create
    @student = StudentDetail.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render 'new'
    end
  end

  def edit
    @student = StudentDetail.find(params[:id])
  end

  def update
    @student = StudentDetail.find(params[:id])

    if( @student.update(student_params))
      redirect_to students_path
    else
      render 'edit'
    end

  end

  def destroy
    @student = StudentDetail.find(params[:id])
    @student.destroy!

    redirect_to students_path
  end

  def show
    @student = StudentDetail.find(params[:id])
  end

  private
    def student_params
      params.require(:student).permit!
    end
end
