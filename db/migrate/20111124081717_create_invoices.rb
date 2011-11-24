class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :customer_id
      t.date :date
      t.bool :is_sent
      t.string :send_method
      t.datetime :date_sent

      t.timestamps
    end
  end
end
