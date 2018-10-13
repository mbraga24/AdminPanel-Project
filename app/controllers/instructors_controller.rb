class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new

    @cohorts = Cohort.all.map { |cohort| 
      [cohort.id]
    }
  end

  def create
    instructor = Instructor.create(
      cohort_id:  params[:instructor][:cohort_id],
      first_name: params[:instructor][:first_name],
      last_name:  params[:instructor][:last_name],
      age:        params[:instructor][:age],
      salary:     params[:instructor][:salary],
      education:  params[:instructor][:education]
    )

    redirect_to instructors_path
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    instructor = Instructor.find(params[:id])

    instructor.update(
      first_name: params[:instructor][:first_name],
      last_name:  params[:instructor][:last_name],
      age:        params[:instructor][:age],
      salary:     params[:instructor][:salary],
      education:  params[:instructor][:education]
    )

    redirect_to instructors_path(instructor)
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy

    respond_to do |format|
      format.js  
    end
  end

  def delete
  end
end
