class CreateInvitees < ActiveRecord::Migration[7.0]
  def change
    create_table :invitees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :image
      t.references :child, foreign_key: true
      t.timestamps
    end
  end
end
