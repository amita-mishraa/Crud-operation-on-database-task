class Faculty < ApplicationRecord
    has_many :faculty_subjects
    has_many :subjects, through: :faculty_subjects

    validates :name, :email, presence: true
end
