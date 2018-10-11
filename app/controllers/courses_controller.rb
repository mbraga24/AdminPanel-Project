class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    course = Course.create(
      name:        params[:course][:name],
      code_name:   params[:course][:code_name],
      total_hours: params[:course][:total_hours]
    )

    redirect_to courses_path
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    course = Course.find(params[:id])

    course.update(
      name:        params[:course][:name],
      code_name:   params[:course][:code_name],
      total_hours: params[:course][:total_hours]
    )

    redirect_to courses_path(course)
  end

  def show
  end

  def delete
  end
end
