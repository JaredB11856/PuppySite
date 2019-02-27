class AddMothersToLitters < ActiveRecord::Migration[5.2]
  def change
    add_reference :litters, :mother, foreign_key: true
  end
end
