class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :host
      t.references :child
      t.string :name
      t.string :location
      t.string :map
      t.string :description
      t.datetime :date
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
