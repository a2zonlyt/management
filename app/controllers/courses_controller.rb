class CoursesController < ApplicationController
  before_filter :set_course, except: [:index, :new, :create]
  before_filter :set_student, only: [:create, :new]
  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    respond_with(@course)
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = @student.courses.new(params[:course])
    @course.save
    redirect_to @course.student
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course.update_attributes(parama[:course])
    respond_with(@course)
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
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
