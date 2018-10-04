class InstructorsController < ApplicationController
  def index
  end

  def update
  end

  def new
    @instructor = Instructor.new

  end

  def create
    instructor = Instructor.create(
      first_name: params[:instructor][:first_name],
      last_name:  params[:instructor][:last_name],
      age:        params[:instructor][:age],
      salary:     params[:instructor][:salary],
      education:  params[:instructor][:education]
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
