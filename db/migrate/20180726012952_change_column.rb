class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :lectures, :form, :integer
    add_column :lectures, :unit, :float
    add_column :lectures, :contents, :text
    add_column :lectures, :remarks, :text
    add_column :lectures, :e_name, :text

    remove_column :lectures, :day
  end
end
