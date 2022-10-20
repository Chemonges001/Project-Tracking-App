class Project < ApplicationRecord
    belongs_to :user
    has_many :members
    validates :name, presence: true
    validates :description, presence: true
    validates :category, presence: true
    validates :github_link, presence: true
end
