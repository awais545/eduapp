class Experience < ActiveRecord::Base
  attr_accessible :end_year, :name, :remarks, :start_year, :title
  
  belongs_to :user
end
