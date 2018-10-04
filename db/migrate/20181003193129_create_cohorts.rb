class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string  :name
      t.date    :start_date
      t.date    :end_date
      t.string  :instructor_name
      t.string  :course_name
      t.integer :class_size
      t.references :course

      t.timestamps
    end
  end
end