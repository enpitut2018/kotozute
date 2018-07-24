class AddGradeToLectures < ActiveRecord::Migration[5.1]
  def change
    add_column :lectures, :grade, :integer
  end
end
