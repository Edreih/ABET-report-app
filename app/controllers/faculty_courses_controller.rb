class FacultyCoursesController < ApplicationController
  before_action :set_faculty_course, only: [:show, :edit, :update, :destroy]

  # GET /faculty_courses
  # GET /faculty_courses.json
  def index
    @faculty_courses = FacultyCourse.all
  end

  # GET /faculty_courses/1
  # GET /faculty_courses/1.json
  def show
  end

  # GET /faculty_courses/new
  def new
    @faculty_course = FacultyCourse.new
  end

  # GET /faculty_courses/1/edit
  def edit
  end

  # POST /faculty_courses
  # POST /faculty_courses.json
  def create
    @faculty_course = FacultyCourse.new(faculty_course_params)

    respond_to do |format|
      if @faculty_course.save
        format.html { redirect_to @faculty_course, notice: 'Faculty assignment was successfully created.' }
        format.json { render :show, status: :created, location: @faculty_course }
      else
        format.html { render :new }
        format.json { render json: @faculty_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faculty_courses/1
  # PATCH/PUT /faculty_courses/1.json
  def update
    respond_to do |format|
      if @faculty_course.update(faculty_course_params)
        format.html { redirect_to @faculty_course, notice: 'Faculty assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @faculty_course }
      else
        format.html { render :edit }
        format.json { render json: @faculty_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faculty_courses/1
  # DELETE /faculty_courses/1.json
  def destroy
    @faculty_course.destroy
    respond_to do |format|
      format.html { redirect_to faculty_courses_url, notice: 'Faculty assignment was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculty_course
      @faculty_course = FacultyCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faculty_course_params
      params.require(:faculty_course).permit(:course_id, :course, :faculty_id, :faculty, faculties_attributes:[:faculty_id, :fname, :lname, :_destroy])
    end

end
