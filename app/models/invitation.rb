class Invitation < ApplicationRecord
    belongs_to :event
    belongs_to :host, class_name: 'User'
    belongs_to :invitee

    attr_accessor :email

end
