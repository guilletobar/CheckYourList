class ReoaracionActividadesCuatro < ActiveRecord::Migration[6.0]
  def change
    add_column :actividades , :client_id , :integer
    add_column :actividades , :profesionale_id , :integer
  end
end
