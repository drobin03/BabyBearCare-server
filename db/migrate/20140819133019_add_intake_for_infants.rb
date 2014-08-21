class AddIntakeForInfants < ActiveRecord::Migration
  def change
    add_column :infants, :daily_intake, :decimal
  end
end
