class ReparacionClientsDos < ActiveRecord::Migration[6.0]
  def change
    remove_column :clients , :comuna_id , :integer
    remove_column :clients , :region_id , :integer
    add_column :clients , :comuna , :string
  end
end
