class Article < ApplicationRecord
    validates :name, :description, :teacher_id, presence: true

    belongs_to :teacher
    has_many :excursions
    has_many :students, through: :excursions
end
