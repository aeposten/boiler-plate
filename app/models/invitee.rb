class Invitee < ApplicationRecord
    belongs_to :child
    has_many :invitations
end
