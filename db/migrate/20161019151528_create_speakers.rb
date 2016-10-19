class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.text :bio
      t.string :profile_url
      t.references :event, foreign_key: true

      t.timestamps null: false
    end
  end
end
