class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings, :id => false do |t|
      t.string :key, :null => false, :primary_key => true
      t.text :value, :default => ''

      t.timestamps
    end
    
    add_index :settings, :key, :unique => true
  end
end
