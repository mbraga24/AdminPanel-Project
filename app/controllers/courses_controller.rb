class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def update
  end

  def new
    @course = Course.new
  end

  def create
    course = Course.create(
      name:        params[:course][:name],
      total_hours: params[:course][:total_hours]
    )

    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def delete
  end
end
