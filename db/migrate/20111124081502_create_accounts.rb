class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :first_name2
      t.string :surname
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :postcode
      t.string :email
      t.string :email2
      t.bool :is_active
      t.bool :is_customer

      t.timestamps
    end
  end
end
