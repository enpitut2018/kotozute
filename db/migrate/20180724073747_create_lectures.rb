class CreateLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures do |t|
      t.string :class_name
      t.string :class_id
      t.string :evaluation
      t.string :grade
      t.string :module
      t.string :department
      t.string :room
      t.string :day
      t.string :period
      t.string :attendance

      t.timestamps
    end
  end
end
