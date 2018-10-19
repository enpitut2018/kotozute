class AddColumnLectures < ActiveRecord::Migration[5.1]
  def change
    add_column :lectures, :satisfaction_ave, :float
    add_column :lectures, :easy_ave, :float
  end
end
