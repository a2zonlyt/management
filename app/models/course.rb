class Course < ActiveRecord::Base
  attr_accessible :subject, :attachments_attributes

  belongs_to :student
  validates_uniqueness_of :name

  has_many :attachments, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachments
end
