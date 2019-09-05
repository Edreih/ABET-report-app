class FacultiesController < ApplicationController
  before_action :set_faculty, only: [:show, :edit, :update, :destroy]

  # GET /faculties
  # GET /faculties.json
  def index
    @faculties = Faculty.all
  end

  # def import
  #   imported_count = 0
  #   CSV.foreach(params[:file].path, encoding: 'UTF-8', headers: true, header_converters: :symbol, converters: :all) do |row|
  #     if Faculty.exists?(email: row[:email])
  #       Rails.logger.warn("Faculty member with email #{row[:email]} already exists")
  #     else
  #       Faculty.create! row.to_hash
  #       imported_count += 1
  #     end
  #   end
  #   imported_count
  # end

  def import
    if params[:file]
      Faculty.import(params[:file])
      redirect(faculties_path, "Faculty data imported!")
    else
      redirect(faculties_path, "Please upload a CSV file")
    end
  end

  # GET /faculties/1
  # GET /faculties/1.json
  def show
  end

  # GET /faculties/new
  def new
    @faculty = Faculty.new
  end

  # GET /faculties/1/edit
  def edit
  end

  # POST /faculties
  # POST /faculties.json
  def create
    @faculty = Faculty.new(faculty_params)

    respond_to do |format|
      if @faculty.save
        format.html { redirect_to @faculty, notice: 'Faculty was successfully created.' }
        format.json { render :show, status: :created, location: @faculty }
      else
        format.html { render :new }
        format.json { render json: @faculty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faculties/1
  # PATCH/PUT /faculties/1.json
  def update
    respond_to do |format|
      if @faculty.update(faculty_params)
        format.html { redirect_to @faculty, notice: 'Faculty was successfully updated.' }
        format.json { render :show, status: :ok, location: @faculty }
      else
        format.html { render :edit }
        format.json { render json: @faculty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faculties/1
  # DELETE /faculties/1.json
  def destroy
    @faculty.destroy
    respond_to do |format|
      format.html { redirect_to faculties_url, notice: 'Faculty was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  def redirect(url, text)
    redirect_to url, notice: text
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculty
      @faculty = Faculty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faculty_params
      params.require(:faculty).permit(:fname, :lname, :title, :office, :email, :phone)
    end
end
