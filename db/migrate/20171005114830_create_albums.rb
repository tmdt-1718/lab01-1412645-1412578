class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :cover_url
      t.string :author
      t.integer :view_count

      t.timestamps
    end
  end
end
