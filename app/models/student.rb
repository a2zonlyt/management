class Student < ActiveRecord::Base
  attr_accessible :level, :name

  has_many :courses
end
