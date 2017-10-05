class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :cover_url
      t.string :author

      t.timestamps
    end
  end
end
