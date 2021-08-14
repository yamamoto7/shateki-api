class CreateImageItems < ActiveRecord::Migration[6.1]
  def change
    create_table :image_items do |t|
      t.string :name
      t.string :url
      t.string :description
      t.string :parent_type
      t.integer :parent_id

      t.timestamps
    end
  end
end
