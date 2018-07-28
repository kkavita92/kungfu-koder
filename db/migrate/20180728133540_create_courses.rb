class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :platform
      t.string :skill
      t.float :length
      t.string :difficulty
      t.string :delivery
      t.float :cost
      t.string :url

      t.timestamps
    end
  end
end
