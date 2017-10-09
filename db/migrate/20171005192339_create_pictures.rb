class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :picture_url
      t.string :uploader
      t.integer :view_count
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
