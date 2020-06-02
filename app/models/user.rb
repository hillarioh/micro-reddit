class User < ApplicationRecord
    has_many :posts
    validates :username, length: {minimum: 2}, presence: true, uniqueness: true
    validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
        message: "Please enter a valid email" }

end
