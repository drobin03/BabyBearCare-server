class AddInfantsToUser < ActiveRecord::Migration
  def change
    add_column :infants, :user_id, :integer
  end
end
