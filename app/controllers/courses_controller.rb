class CoursesController < ApplicationController
  def index
  	@courses = Course.all
  end

  def show
  	 @course = Course.find(params[:id])
  end
 
  private

  helper_method :current_course
  def current_course
    @courses ||= Course.find(params[:id])
  end
end
