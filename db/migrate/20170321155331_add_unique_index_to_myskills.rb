class AddUniqueIndexToMyskills < ActiveRecord::Migration[5.0]
  def change
    add_index(:myskills, [:user_id, :skill_id], unique: true)
  end
end
