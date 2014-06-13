class RemovePostalCode < ActiveRecord::Migration
  def change
    remove_column :infants, :postal_code
    add_column :users, :postal_code, :string
  end
end
