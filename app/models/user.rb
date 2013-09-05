class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
  :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :surname, :terms_of_service, :permalink,:sex, :dob, :race, :qualification, :zip, :about, :philosopfy, :educations, :educations_attributes

  validates_presence_of :name, :surname, :email, :permalink
  validates_uniqueness_of :email, :permalink
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates :terms_of_service, :inclusion => {:in => [true], :message => "You must accept terms of service"}
  
  has_many :educations
  has_many :experiences
  accepts_nested_attributes_for :educations
end
