class CreateStorageLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :storage_locations do |t|
      t.integer :location_id
      t.string :shefl
      t.string :drawer

      t.timestamps
    end
  end
end
