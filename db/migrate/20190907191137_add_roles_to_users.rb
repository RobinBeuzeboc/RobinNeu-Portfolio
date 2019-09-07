class AddRolesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :users, :string
    add_column :users, :roles, :string
  end
end
