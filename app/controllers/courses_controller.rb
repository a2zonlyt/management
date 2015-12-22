class CoursesController < ApplicationController
  before_filter :set_course, only: [:show, :edit, :update, :destroy]
  before_filter :set_student, only: [:create]
  respond_to :html

  def index
    @courses = Course.all
    respond_with(@courses)
  end

  def show
    respond_with(@course)
  end

  def new
    @course = Course.new
    respond_with(@course)
  end

  def edit
  end

  def create
    @course = @student.courses.new(params[:course])
    @course.save
    redirect_to @course.student
  end

  def update
    @course.update_attributes(params[:course])
    respond_with(@course)
  end

  def destroy
    @course.destroy
    respond_with(@course)
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def set_student
      @student = Student.find(params[:student_id])
    end
 end