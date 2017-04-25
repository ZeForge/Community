class AddLogoToSkills < ActiveRecord::Migration[5.0]
  def change
    add_column :skills, :logo, :string
  end
end
