class CreateLaboratory22s < ActiveRecord::Migration[7.0]
  def change
    create_table :laboratory_22s do |t|
      t.integer :number_laboratory
      t.string :description
      t.string :address
      t.string :pharmacy_of_brand
      t.string :distric
      t.integer :region
      t.string :hour_open
      t.string :hour_close
      t.integer :phone
      t.integer :number_medicine_isbn

      t.timestamps
    end
  end
end
