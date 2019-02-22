class CreatePuppies < ActiveRecord::Migration[5.2]
  def change
    create_table :puppies do |t|
      t.string :name
      t.text :image_one
      t.text :image_two
      t.text :about
      t.decimal :price

      t.timestamps
    end
  end
end
