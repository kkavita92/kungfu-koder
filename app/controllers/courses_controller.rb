class CoursesController < ApplicationController

  def index
   @courses = Course.all
  end

  def new
  end

  def create
    @course = Course.new(course_params)

    @course.save
    redirect_to @course
  end

  def show
    @course = Course.find(params[:id])
  end

private
  def course_params
    params.require(:course).permit(:name, :platform, :skill, :length, :difficulty, :delivery, :cost, :url)
  end
end
