class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.decimal :cost
      t.integer :user_id
      t.string :image
      t.timestamps null: false
    end

    add_index :courses, :user_id
  end
end
