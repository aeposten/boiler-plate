class CreateInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :invitations do |t|
      t.references :invitee, foreign_key: true
      t.references :event, foreign_key: true
      t.references :host, foreign_key: true
      t.timestamps
    end
  end
end

