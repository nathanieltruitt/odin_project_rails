class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :street_address
      t.timestamps
    end
  end
end
