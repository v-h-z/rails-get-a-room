class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.references :room, null: false, foreign_key: true

      t.timestamps
    end
  end
end
