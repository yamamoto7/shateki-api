class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :store_id

      t.string :name
      t.string :description
      t.string :image_url

      t.integer :height
      t.integer :width
      t.integer :weight
      t.integer :position_x
      t.integer :position_y

      t.integer :score

      t.timestamps
    end
  end
end
