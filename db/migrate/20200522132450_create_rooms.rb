class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :address
      t.integer :superficy
      t.boolean :independant

      t.timestamps
    end
  end
end
