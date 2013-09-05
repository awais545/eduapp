class AddToUsers < ActiveRecord::Migration
  def up
    add_column :users, :dob, :date
    add_column :users, :sex, :boolean, :default => true
    add_column :users, :race, :string
    add_column :users, :qualification, :string
    add_column :users, :zip, :string
    
    add_column :users, :about, :text
    add_column :users, :philosopfy, :text
  end

  def down
  end
end