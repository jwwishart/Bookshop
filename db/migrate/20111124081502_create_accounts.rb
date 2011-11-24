class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :first_name, :null => false, :default => ''
      t.string :first_name2, :null => false, :default => ''
      t.string :surname, :null => false, :default => ''
      t.string :address_line1, :null => false, :default => ''
      t.string :address_line2, :null => false, :default => ''
      t.string :city, :null => false, :default => ''
      t.string :state, :null => false, :default => ''
      t.string :postcode, :null => false, :default => ''
      t.string :email, :null => false, :default => ''
      t.string :email2, :null => false, :default => ''
      t.boolean :is_active, :null => false, :default => true
      t.boolean :is_customer, :null => false, :default => true

      t.timestamps
    end
  end
end
