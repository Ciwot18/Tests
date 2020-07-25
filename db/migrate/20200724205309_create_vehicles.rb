class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.integer :user_id, null: false
      t.integer :vehicle_class_id, null: false
      t.integer :fuel_id, null: false

      t.string :name, null: false
      t.string :model, null: false
      t.datetime :purchase_date, null: false
      t.datetime :vehicle_dob, null: false

      t.timestamps
    end
  end
end