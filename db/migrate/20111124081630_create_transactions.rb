class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :from_customer
      t.integer :to_customer
      t.decimal :amount
      t.date :date
      t.string :description
      t.text :notes
      t.integer :invoice_id

      t.timestamps
    end
  end
end
