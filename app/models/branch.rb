class Branch < ApplicationRecord
    has_many :students

    validates :branch_name, presence: true
end
