class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :from_customer # FK to Account
      t.integer :to_customer # FK to Account
      t.decimal :amount, :null => false, :default => 0
      t.date :date, :null => false
      t.string :description, :null => false
      t.text :notes, :null => false, :default => ''
      t.integer :invoice_id, :null => true, :default => nil

      t.timestamps
    end
  end
end
