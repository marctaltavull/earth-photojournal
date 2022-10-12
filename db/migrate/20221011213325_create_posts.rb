class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :guidpi
      t.string :title
      t.string :description
      t.string :link
      t.string :spacecraft
      t.string :instrument

      t.timestamps
    end
  end
end
