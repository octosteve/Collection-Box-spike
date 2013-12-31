class CreateCollectionBoxes < ActiveRecord::Migration
  def change
    create_table :collection_boxes do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :location_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
