class CohortsController < ApplicationController
  def index
  end

  def update
  end

  def new
    @courses = Course.all
    
    @cohort = Cohort.new
  end

  def create
    cohort = Cohort.create(
      course_id:       params[:cohort][:course_id],
      name:            params[:cohort][:name],
      start_date:      params[:cohort][:start_date],
      end_date:        params[:cohort][:end_date],
      instructor_name: params[:cohort][:instructor_name],
      course_name:     params[:cohort][:course_name],
      class_size:      params[:cohort][:class_size]
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
