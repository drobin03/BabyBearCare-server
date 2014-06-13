class CreateInfants < ActiveRecord::Migration
  def change
    create_table :infants do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :weight
      t.string :postal_code
      t.string :gender
      t.date :date_of_birth
      t.date :due_date
      t.decimal :birth_weight
      t.string :multiple_birth

      t.timestamps
    end
  end
end
