class Account < ActiveRecord::Base
  has_many :invoice
  
  def transactions_made 
    Transaction.where( 'from_customer= #{id}' ).order('data ASC') 
  end
  
  def transactions_received 
    Transaction.where( 'to_customer= #{id}' ).order('data ASC') 
  end
  
  def transactions 
    Transaction.where( 'from_customer = :id AND to_customer = :id', { :id => id } )
               .order('date ASC')
  end
end
