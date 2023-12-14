class Blog < ApplicationRecord
    belongs_to :user

    validates :comment, :stars, presence: true
end
