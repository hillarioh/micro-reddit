class Post < ApplicationRecord    
    belongs_to :user
    has_many :comments
    validates :title, presence: true, length: { minimum: 3 }
    validates :content, presence: true, length: { maximum: 500 }
end
