class AddRolesUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users , :roles_id , :integer
  end
end
