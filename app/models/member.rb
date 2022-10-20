class Member < ApplicationRecord
    belongs_to :project
    belongs_to :user
    validates :user_id, presence: true
end
