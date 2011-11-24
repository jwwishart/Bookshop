class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :date, :null => true, :default => nil
      t.boolean :is_sent, :null => false, :default => false
      t.string :send_method, :null => false, :default => 'not-sent'
      t.datetime :date_sent, :null => true, :default => nil

      t.timestamps
    end
  end
end
