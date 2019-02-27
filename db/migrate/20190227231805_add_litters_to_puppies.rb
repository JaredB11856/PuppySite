class AddLittersToPuppies < ActiveRecord::Migration[5.2]
  def change
    add_reference :puppies, :litter, foreign_key: true
  end
end
