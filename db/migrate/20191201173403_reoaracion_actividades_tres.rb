class ReoaracionActividadesTres < ActiveRecord::Migration[6.0]
  def change
    remove_column :actividades , :cliente_id , :integer
    remove_column :actividades , :profesional_id , :integer
    add_column :actividades , :client_id , :integer
    add_column :actividades , :profesionale_id , :integer
  end
end
