class Child < ApplicationRecord
    has_many :friends, class_name: 'Invitee'
    has_many :events, through: :users
    belongs_to :user
end
