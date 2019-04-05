class AddSlugToMothers < ActiveRecord::Migration[5.2]
  def change
    add_column :mothers, :slug, :string
    add_index :mothers, :slug, unique: true
  end
end
