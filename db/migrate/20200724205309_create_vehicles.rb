class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.references :users, null: false
      t.references :vehicle_classes, null: false
      t.references :fuels, null: false

      t.string :name, null: false
      t.string :model, null: false
      t.datetime :purchase_date, null: false
      t.datetime :vehicle_dob, null: false

      t.timestamps
    end
  end
end