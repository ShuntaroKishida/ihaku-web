class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.text   :description
      t.string :image
      t.timestamps
    end
  end
end