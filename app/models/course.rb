class Course < ActiveRecord::Base
  attr_accessible :subject

  belongs_to :student
end
