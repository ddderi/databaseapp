class Student < ApplicationRecord
    validates :name, presence: true

    has_many :excursions
    has_many :articles, through: :excursions
end
