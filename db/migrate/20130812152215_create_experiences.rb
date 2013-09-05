class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :title
      t.integer :start_year
      t.integer :end_year
      t.text :remarks
      t.integer :user_id

      t.timestamps
    end
  end
end
