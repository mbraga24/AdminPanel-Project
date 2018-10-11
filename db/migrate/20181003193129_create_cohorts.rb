class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.date       :start_date
      t.date       :end_date
      t.integer    :class_size
      t.references :course

      t.timestamps
    end
  end
end