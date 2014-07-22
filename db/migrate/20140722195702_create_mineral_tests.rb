class CreateMineralTests < ActiveRecord::Migration
  def change
    create_table :mineral_tests do |t|
      t.belongs_to :water_source, index: true
      t.belongs_to :mineral, index: true
      t.datetime :test_date
      t.decimal :measurement

      t.timestamps
    end
  end
end
