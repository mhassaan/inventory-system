class AddOrganizationAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :organization_admin, :boolean
  end
end
