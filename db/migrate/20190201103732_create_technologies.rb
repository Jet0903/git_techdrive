class CreateTechnologies < ActiveRecord::Migration[5.2]
  def change
    create_table :technologies do |t|
      t.text      :product
      t.text      :summary
      t.text      :detail
      t.text      :feature
      t.text      :consideration
      t.text      :usecase
      t.text      :url
      t.text      :drive
      t.text      :status
      t.text      :note
      t.text      :flag
      t.timestamps null: true
    end
  end
end
