class StudentsController < ApplicationController
  def index
  end

  def update
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create(
      first_name: params[:student][:first_name],
      last_name:  params[:student][:last_name],
      age:        params[:student][:age],
      education:  params[:student][:education]
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
