class ReparacionProfesionales < ActiveRecord::Migration[6.0]
  def change
    remove_column :profesionales , :descripcion , :string

  end
end
