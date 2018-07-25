class AddProfesserClasskindToLectures < ActiveRecord::Migration[5.1]
  def change
    add_column :lectures, :professer, :string
    add_column :lectures, :class_kind, :string
  end
end
