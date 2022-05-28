class CreateMediCines < ActiveRecord::Migration[7.0]
  def change
    create_table :medi_cines do |t|
      t.integer :number_medicine_isbn
      t.string :description
      t.integer :initial_stock
      t.integer :final_stock
      t.integer :initial_price
      t.integer :final_price

      t.timestamps
    end
  end
end
