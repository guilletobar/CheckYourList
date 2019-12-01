class ReparacionActividades < ActiveRecord::Migration[6.0]
  def change
    add_column :actividades , :profesional_id , :integer
  end
end
