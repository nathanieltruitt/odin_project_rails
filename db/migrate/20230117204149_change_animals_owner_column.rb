class ChangeAnimalsOwnerColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :animals, :owner
    add_reference :animals, :owners, foreign_key: true
  end
end
