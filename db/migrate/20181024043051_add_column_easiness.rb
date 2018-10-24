class AddColumnEasiness < ActiveRecord::Migration[5.1]
  def change
    add_column :user_voices, :easiness, :integer
  end
end
