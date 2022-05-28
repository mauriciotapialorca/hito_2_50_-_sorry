class CreateLaboratories < ActiveRecord::Migration[7.0]
  def change
    create_table :laboratories do |t|
      t.integer :number_laboratory
      t.string :description

      t.timestamps
    end
  end
end
