class AssociateScanWithUser < ActiveRecord::Migration
  def change
    add_column :fluoride_scans, :user_id, :integer
  end
end
