class InviteeSerializer < ActiveModel::Serializer
  attributes :id
  t.references :child
end
