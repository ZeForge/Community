class CreateMyskills < ActiveRecord::Migration[5.0]
  def change
    create_table :myskills do |t|
      t.references :user, foreign_key: true
      t.references :skill, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
