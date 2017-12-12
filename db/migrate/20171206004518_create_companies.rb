class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :products
      t.text :about
      t.string :address
      t.string :email
      t.string :password
      t.string :password_digest

      t.timestamps
    end
  end
end
