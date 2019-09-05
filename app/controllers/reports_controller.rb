class ReportsController < ApplicationController
  def index
    @course = Course.find(params[:id])
    @faculty = Faculty.find(params[:id])
    # @progress_report = ProgressReport.new(@course, @faculty_member)
  end
end