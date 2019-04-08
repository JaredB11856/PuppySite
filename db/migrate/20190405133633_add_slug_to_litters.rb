class AddSlugToLitters < ActiveRecord::Migration[5.2]
  def change
    add_column :litters, :slug, :string
    add_index :litters, :slug, unique: true
  end
end
