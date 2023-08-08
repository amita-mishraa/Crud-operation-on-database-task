class FacultySubject < ApplicationRecord
  belongs_to :faculty
  belongs_to :subject
end
