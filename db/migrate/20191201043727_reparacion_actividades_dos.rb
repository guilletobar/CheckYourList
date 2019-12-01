class ReparacionActividadesDos < ActiveRecord::Migration[6.0]
  def change
    add_column :actividades , :cliente_id , :integer

  end
end
