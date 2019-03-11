class AddDepartmentnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :departmentname, :string
  end
end
