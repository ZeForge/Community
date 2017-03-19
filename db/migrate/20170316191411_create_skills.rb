class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.references :skillcategory, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
