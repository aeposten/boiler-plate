class User < ApplicationRecord
    has_secure_password
    has_many :children
    has_many :events, foreign_key: "host_id", dependent: :destroy
    has_many :created_invitations, through: :events, source: :invitations, dependent: :destroy
    
    validates :username, presence: true, uniqueness: true 
    validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, presence: true
end
