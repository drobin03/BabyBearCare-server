class CreateMinerals < ActiveRecord::Migration
  def change
    create_table :minerals do |t|
      t.string :name
      t.decimal :max_dosage

      t.timestamps
    end
  end
end
