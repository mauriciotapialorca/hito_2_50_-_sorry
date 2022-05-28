class CreateProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :providers do |t|
      t.integer :number_provider
      t.string :description
      t.string :number_medicine

      t.timestamps
    end
  end
end
