class Transaction < ActiveRecord::Base
  belongs_to :invoice  
  belongs_to :from_customer, :class => 'Account', :foreign_key => 'from_customer'
  belongs_to :to_customer, :class => 'Account', :foreign_key => 'to_customer'
end
