class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :title
      t.integer :course_id
      t.integer :sort_order
      t.timestamps null: false
    end

    add_index :sections, :course_id
    add_index :sections, :sort_order
  end
end
