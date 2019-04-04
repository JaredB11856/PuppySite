class AddMainImageToPuppies < ActiveRecord::Migration[5.2]
  def change
    add_column :puppies, :main_image, :text
  end
end
