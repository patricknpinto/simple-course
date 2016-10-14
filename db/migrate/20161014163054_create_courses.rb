class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :status
      t.integer :category
      t.references :candidate

      t.timestamps null: false
    end
  end
end
