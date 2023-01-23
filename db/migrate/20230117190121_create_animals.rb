class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :owner
      t.timestamps
    end
  end
end
