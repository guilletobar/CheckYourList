class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :rut
      t.string :nombre
      t.string :region
      t.string :comuna
      t.string :direccion
      t.string :correo
      t.string :telefono

      t.timestamps
    end
  end
end
