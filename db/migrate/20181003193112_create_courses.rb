class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string  :name
      t.string  :code_name
      t.integer :total_hours
    end
  end
end