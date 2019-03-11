class AddCompanynameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :companyname, :string
  end
end
