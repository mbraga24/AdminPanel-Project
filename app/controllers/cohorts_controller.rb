class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all

    @courses = Course.all
  end

  def new
    @cohort = Cohort.new
    @instructor = Instructor.new
    
    @courses = Course.all.map { |course| 
      [course.name, course.id] 
    }
  end

  def create
    cohort = Cohort.create(
      course_id:       params[:cohort][:course_id],
      class_size:      params[:cohort][:class_size],
      start_date:      params[:cohort][:start_date],
      end_date:        params[:cohort][:end_date]
    )

    redirect_to cohorts_path
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    cohort = Cohort.find(params[:id])

    cohort.update(
      class_size:       params[:cohort][:class_size],
      start_date:       params[:cohort][:start_date],
      end_date:         params[:cohort][:end_date]
    )

    redirect_to cohorts_path(cohort)
  end

  def show
    @cohort = Cohort.find(params[:id])
    @students=Student.all.map{|student| [student.first_name, student.id]}
    @students_in_cohort=StudentsCohort.where(cohort_id:  @cohort.id)
    puts @students_in_cohort
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy

    respond_to do |format|
      format.js
    end
  end

  def delete
  end
end