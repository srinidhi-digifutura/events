class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.text :address
      t.text :description
      t.string :city
      t.string :state
      t.date :event_date

      t.timestamps null: false
    end
  end
end
