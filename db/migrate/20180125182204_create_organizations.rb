class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :email
      t.string :short_name
      t.text :address
      t.string :url
      t.timestamps
    end
    add_index :organizations, :short_name
  end
end
