class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new

    @cohorts = Cohort.all.map { |cohort|
      [cohort.id]
    }
  end

  def create
    student = Student.create(
      cohort_id:  params[:student][:cohort_id],
      first_name: params[:student][:first_name],
      last_name:  params[:student][:last_name],
      age:        params[:student][:age],
      education:  params[:student][:education]
    )

    redirect_to students_path
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])

    student.update(
      first_name: params[:student][:first_name],
      last_name:  params[:student][:last_name],
      age:        params[:student][:age],
      education:  params[:student][:education]
    )

    redirect_to students_path(student)
  end

  def show
  end

  def delete
  end
end
