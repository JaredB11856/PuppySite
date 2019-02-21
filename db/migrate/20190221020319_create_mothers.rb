class CreateMothers < ActiveRecord::Migration[5.2]
  def change
    create_table :mothers do |t|
      t.text :main_image
      t.text :image_one
      t.text :image_two
      t.text :about

      t.timestamps
    end
  end
end
