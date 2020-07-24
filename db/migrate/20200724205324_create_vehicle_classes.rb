class CreateVehicleClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_classes do |t|
      t.string :class_name, null: false

      t.timestamps
    end
    add_index :vehicle_classes, :class_name, unique: true
  end
end