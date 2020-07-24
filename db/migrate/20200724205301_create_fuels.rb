class CreateFuels < ActiveRecord::Migration[5.2]
  def change
    create_table :fuels do |t|
      t.string :fuel_name, null: false

      t.timestamps
    end
    add_index :fuels, :fuel_name, unique: true
  end
end