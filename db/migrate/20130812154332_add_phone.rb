class AddPhone < ActiveRecord::Migration
  def up
    add_column :users, :phone, :string
  end

  def down
  end
end