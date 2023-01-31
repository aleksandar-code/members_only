class Post < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    validates :member, presence: false

    belongs_to :member
end
