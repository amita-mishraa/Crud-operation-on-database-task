class Student < ApplicationRecord
  belongs_to :branch
  has_many :student_subjects
  has_many :subjects, through: :student_subjects
  
    validates :name, :branch_id, presence: true
    validates :email, presence: true, uniqueness: true
    validates :age, presence: true, length: { minimum: 1, maximum: 2 }
end