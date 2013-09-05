class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :surname, :string
    add_column :users, :terms_of_service, :boolean
    add_column :users, :permalink, :string
  end
end