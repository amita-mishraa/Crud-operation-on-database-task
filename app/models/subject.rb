class Subject < ApplicationRecord
    has_many :student_subjects
    has_many :students, through: :student_subjects
    has_many :faculty_subjects
    has_many :faculties, through: :faculty_subjects

    validates :sub_name, presence: true
end
