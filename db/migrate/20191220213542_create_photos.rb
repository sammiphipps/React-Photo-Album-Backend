class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :image_url
      t.date :date_taken
      t.references :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
