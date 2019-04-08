class AddSlugToPuppies < ActiveRecord::Migration[5.2]
  def change
    add_column :puppies, :slug, :string
    add_index :puppies, :slug, unique: true
  end
end
