class AddRolesToUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :roles
    add_column :users, :roles, :string
  end
end
