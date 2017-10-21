class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :role, null: false
      t.string :contact_permissions, null: false
      t.string :phone
      t.string :position
      t.string :company
    end
  end
end
