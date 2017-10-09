class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.integer :image_id
      t.integer :view_number
      t.string :text_content

      t.timestamps
    end
  end
end
