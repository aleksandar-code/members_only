class Post < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    validates :member, uniqueness: true
    belongs_to :member
end
