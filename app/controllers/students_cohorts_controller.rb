class StudentsCohortsController < ApplicationController
  def new
    
  end

  def create
    puts "!!!!!!!!!!"
    x=params[:students_cohort][:students_id]
    puts x
    # y=x.to_i
    # puts y
    # puts x.class

    StudentsCohort.create(
        student_id: params[:students_cohort][:students_id].to_i,
        cohort_id: params[:students_cohort][:cohort_id].to_i
    )
  redirect_to "/cohorts/#{params[:students_cohort][:cohort_id].to_i}" 
  end


end
