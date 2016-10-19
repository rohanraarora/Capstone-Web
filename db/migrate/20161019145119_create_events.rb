class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :from_datetime
      t.datetime :to_datetime
      t.string :ticket_url
      t.integer :ticker_price
      t.string :venue_title
      t.decimal :venue_lat
      t.decimal :venue_long

      t.timestamps null: false
    end
  end
end
