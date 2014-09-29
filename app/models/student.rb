class Student < ActiveRecord::Base

  attr_accessor :email_confirmation
  has_and_belongs_to_many :majors

  has_one :major_1, class_name: 'Major'
  has_one :major_2, class_name: 'Major'
  has_one :major_3, class_name: 'Major'

  validates :name, presence: true
  validates :email, email: true, confirmation: true, uniqueness: true
  validates :email_confirmation, email: true
  validates :expected_graduation_year, presence: true
  validates :expected_graduation_season, presence: true

end
