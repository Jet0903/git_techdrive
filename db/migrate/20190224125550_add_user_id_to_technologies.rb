class AddUserIdToTechnologies < ActiveRecord::Migration[5.2]
  def change
    add_column :technologies, :user_id, :integer
  end
end
