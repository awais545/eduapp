class Education < ActiveRecord::Base
  attr_accessible :end_year, :level, :remarks, :start_year, :title

  validates_presence_of :title, :end_year, :start_year, :level
  belongs_to :user
end
