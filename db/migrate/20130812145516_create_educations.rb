class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :title
      t.integer :start_year
      t.integer :end_year
      t.string :level
      t.text :remarks
      t.integer :user_id

      t.timestamps
    end
  end
end
