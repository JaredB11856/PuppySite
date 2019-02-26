class AddNameToMothers < ActiveRecord::Migration[5.2]
  def change
    add_column :mothers, :name, :string
  end
end
