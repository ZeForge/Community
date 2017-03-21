class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :subtitle
      t.string :video
      t.integer :section_id
      t.integer :sort_order
      t.timestamps null: false
    end

    add_index :lessons, :section_id
    add_index :lessons, :sort_order
  end
end
