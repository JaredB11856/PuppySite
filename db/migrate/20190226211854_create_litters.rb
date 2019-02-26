class CreateLitters < ActiveRecord::Migration[5.2]
  def change
    create_table :litters do |t|
      t.date :date
      t.text :about
      t.text :main_image
      t.text :image_one
      t.text :image_two

      t.timestamps
    end
  end
end
