class CreateAvatars < ActiveRecord::Migration[5.2]
  def change
    create_table :avatars do |t|
      t.string :path, null: false
      t.string :name, null: false

      t.timestamps
    end
    add_index :avatars, :name, unique: true
  end
end
