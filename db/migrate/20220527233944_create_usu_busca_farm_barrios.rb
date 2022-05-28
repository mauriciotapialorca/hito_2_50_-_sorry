class CreateUsuBuscaFarmBarrios < ActiveRecord::Migration[7.0]
  def change
    create_table :usu_busca_farm_barrios do |t|
      t.string :login
      t.string :password
      t.string :number_medicine

      t.timestamps
    end
  end
end
