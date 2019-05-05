class CreateLastKnownLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :last_known_locations do |t|
      t.float :latitude
      t.float :longitude
      t.references :survivor, foreign_key: true

      t.timestamps
    end
  end
end
