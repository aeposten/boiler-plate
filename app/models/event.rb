class Event < ApplicationRecord
    belongs_to :host, class_name: 'User'
    belongs_to :child
    has_many :invitations
    has_many :invitees, through: :invitations
