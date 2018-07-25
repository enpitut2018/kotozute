class CreateUserVoices < ActiveRecord::Migration[5.1]
  def change
    create_table :user_voices do |t|
      t.text :comment
      t.integer :satisfaction
      t.references :lectures, foreign_key: true

      t.timestamps
    end
  end
end
