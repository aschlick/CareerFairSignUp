class StudentsController < ApplicationController

  respond_to :html

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to root_path
    else
      Rails.logger.info "\n\n"
      Rails.logger.info student_params
      Rails.logger.info @student.inspect
      Rails.logger.info @student.major_ids
      Rails.logger.info "\n\n"
      respond_with @student
    end
  end

  def index
    @students = Student.all
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(student_params)
    respond_with @student
  end

  def edit
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    respond_with @student
  end

private

  def student_params
    params.require(:student).permit(:name, :email, :email_confirmation, {major_ids: []}, :expected_graduation_year, :expected_graduation_season)
  end

end
