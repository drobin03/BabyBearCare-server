class ChangingFluorideScansToInfantsInsteadOfUsers < ActiveRecord::Migration
  def change
    remove_column :fluoride_scans, :user_id
    add_column :fluoride_scans, :infant_id, :integer
  end
end
