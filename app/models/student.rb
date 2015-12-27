class Student < ActiveRecord::Base
  attr_accessible :level, :name, :attachments_attributes

  has_many :courses
  validates_uniqueness_of :name
  has_many :attachments, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachments
end
